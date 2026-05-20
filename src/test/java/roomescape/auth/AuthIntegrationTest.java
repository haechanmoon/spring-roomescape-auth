package roomescape.auth;

import io.restassured.RestAssured;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.DirtiesContext;
import roomescape.dao.MemberDao;
import roomescape.domain.Member;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
@DirtiesContext(classMode = DirtiesContext.ClassMode.BEFORE_EACH_TEST_METHOD)
class AuthIntegrationTest {

    @Autowired
    private MemberDao memberDao;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    private String token;

    @BeforeEach
    void setUp() {
        // 테스트용 멤버 생성 및 토큰 발급
        Member testMember = memberDao.save(new Member("브라운", "brown@test.com", "pw"));
        token = jwtTokenProvider.createToken(testMember.id(), testMember.name());
    }

    @Test
    void 쿠키로_인증하여_예약조회() {
        RestAssured.given().log().all()
                .cookie("token", token)
                .when().get("/reservations")
                .then().log().all()
                .statusCode(200);
    }

    @Test
    void Authorization_헤더로_인증하여_예약조회() {
        RestAssured.given().log().all()
                .header("Authorization", "Bearer " + token)
                .when().get("/reservations")
                .then().log().all()
                .statusCode(200);
    }

    @Test
    void 인증정보가_없으면_401_응답() {
        RestAssured.given().log().all()
                .when().get("/reservations")
                .then().log().all()
                .statusCode(401);
    }
}
