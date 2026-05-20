package roomescape.domain;

import java.time.LocalDate;

public record Reservation(
        Long id,
        Member member,
        LocalDate date,
        ReservationTime time,
        Theme theme
) {

    public Reservation(Long id, Member member, LocalDate date, ReservationTime time, Theme theme) {
        this.id = id;
        this.theme = theme;
        this.member = member;
        this.date = date;
        this.time = time;
    }

    public Reservation(Member member, LocalDate date, ReservationTime time, Theme theme) {
        this(null, member, date, time, theme);
    }

    public Long getTimeId() {
        return time.id();
    }

    public Long getThemeId() {
        return theme.id();
    }

    public String name() {
        return member != null ? member.name() : null;
    }
}

