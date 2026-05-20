package roomescape.auth;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestTemplate;

class JwtTokenProviderTest {

    @Test
    void 토큰_생성_검증(){
        //given
        JwtTokenProvider provider = new JwtTokenProvider("test-secret-key-that-is-long-enugh-for-hmac", 360000);
        String token = provider.createToken(1L, "pobi");

        //when && then
        assertThat(provider.validateToken(token)).isTrue();
    }

    @Test
    void 토큰_생성_후_멤버ID_확인(){
        //given
        JwtTokenProvider provider = new JwtTokenProvider("test-secret-key-that-is-long-enugh-for-hmac", 360000);
        String token = provider.createToken(1L, "pobi");

        //when
        Long memberId =  provider.getMemberId(token);

        //then
        assertThat(memberId).isEqualTo(1L);
    }

    @Test
    void 토큰_검증_오류(){
        //given
        JwtTokenProvider provider = new JwtTokenProvider("test-secret-key-that-is-long-enugh-for-hmac", 360000);

        //when
        String strange = "이상한토큰이상한토큰이상한토큰";

        //then
        assertThat(provider.validateToken(strange)).isFalse();
    }
}
