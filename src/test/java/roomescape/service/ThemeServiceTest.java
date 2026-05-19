package roomescape.service;

import static org.assertj.core.api.Assertions.assertThat;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.jdbc.core.JdbcTemplate;
import roomescape.dao.MemberDao;
import roomescape.domain.Member;
import roomescape.domain.ReservationTime;
import roomescape.domain.Theme;
import roomescape.dto.ReservationTimeStatusResponse;

@SpringBootTest(webEnvironment = WebEnvironment.NONE)
class ThemeServiceTest {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private ThemeService themeService;

    @Autowired
    private ReservationService reservationService;

    @Autowired
    private ReservationTimeService reservationTimeService;

    @Autowired
    private MemberDao memberDao;

    private Member max;
    private Member pino;
    private Member brown;
    private Member pobi;

    @BeforeEach
    void setUp() {
        jdbcTemplate.execute("SET REFERENTIAL_INTEGRITY FALSE");

        jdbcTemplate.execute("TRUNCATE TABLE reservation RESTART IDENTITY");
        jdbcTemplate.execute("TRUNCATE TABLE reservation_time RESTART IDENTITY");
        jdbcTemplate.execute("TRUNCATE TABLE theme RESTART IDENTITY");
        jdbcTemplate.execute("TRUNCATE TABLE member RESTART IDENTITY");

        jdbcTemplate.execute("SET REFERENTIAL_INTEGRITY TRUE");

        max = memberDao.save(new Member("맥스", "max@test.com", "pw"));
        pino = memberDao.save(new Member("피노", "pino@test.com", "pw"));
        brown = memberDao.save(new Member("브라운", "brown@test.com", "pw"));
        pobi = memberDao.save(new Member("포비", "pobi@test.com", "pw"));
    }

    @Test
    void 테마를_저장하고_조회한다() {
        Theme savedTheme = themeService.save(new Theme("공포", "무서움", "https://roomescape.com"));
        List<Theme> themes = themeService.findAll();
        assertThat(themes.getFirst().id()).isEqualTo(savedTheme.id());
    }

    @Test
    void 테마를_저장하고_삭제한다() {
        Theme savedTheme = themeService.save(new Theme("공포", "무서움", "https://roomescape.com"));
        themeService.deleteById(savedTheme.id());
        assertThat(themeService.findAll()).hasSize(0);
    }

    @Test
    void 예약_가능한_시간_필터링() {
        LocalDate targetDate = LocalDate.now().plusDays(1);

        ReservationTime targetTime1 = reservationTimeService.save(new ReservationTime(LocalTime.of(10, 0)));
        ReservationTime targetTime2 = reservationTimeService.save(new ReservationTime(LocalTime.of(11, 0)));
        ReservationTime otherDateTime = reservationTimeService.save(new ReservationTime(LocalTime.of(12, 0)));
        ReservationTime otherThemeTime = reservationTimeService.save(new ReservationTime(LocalTime.of(13, 0)));

        Theme targetTheme = themeService.save(new Theme("공포", "무서움", "https://roomescape.com/horror"));
        Theme otherTheme = themeService.save(new Theme("판타지", "신비로움", "https://roomescape.com/fantasy"));

        reservationService.save(max, targetDate, targetTime1.id(), targetTheme.id());
        reservationService.save(pino, targetDate, targetTime2.id(), targetTheme.id());

        reservationService.save(brown, LocalDate.now().plusDays(2), otherDateTime.id(), targetTheme.id());
        reservationService.save(pobi, targetDate, otherThemeTime.id(), otherTheme.id());

        assertThat(themeService.findReservationTimeByDateAndThemeId(targetDate, targetTheme.id()))
                .extracting(ReservationTimeStatusResponse::available)
                .containsExactlyInAnyOrder(true, true, false, false);
    }
}
