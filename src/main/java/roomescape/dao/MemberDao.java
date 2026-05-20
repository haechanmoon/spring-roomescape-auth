package roomescape.dao;

import java.util.List;
import java.util.Optional;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import roomescape.domain.Member;

@Repository
public class MemberDao {
    private final JdbcTemplate jdbcTemplate;

    public MemberDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Member> memberRowMapper = (rs, rowNum) -> new Member(
            rs.getLong("id"),
            rs.getString("name"),
            rs.getString("email"),
            rs.getString("password")
    );

    public Optional<Member> findByEmailAndPassword(String email, String password) {
        String sql = "SELECT * FROM member WHERE email = ? AND password = ?";
        List<Member> members = jdbcTemplate.query(sql, memberRowMapper, email, password);
        return members.stream().findFirst();
    }

    public Optional<Member> findById(Long id) {
        String sql = "SELECT * FROM member WHERE id = ?";
        List<Member> members = jdbcTemplate.query(sql, memberRowMapper, id);
        return members.stream().findFirst();
    }

    public Member save(Member member) {
        String sql = "INSERT INTO member (name, email, password) VALUES (?, ?, ?)";
        org.springframework.jdbc.support.KeyHolder keyHolder = new org.springframework.jdbc.support.GeneratedKeyHolder();
        jdbcTemplate.update(connection -> {
            java.sql.PreparedStatement ps = connection.prepareStatement(sql, new String[]{"id"});
            ps.setString(1, member.name());
            ps.setString(2, member.email());
            ps.setString(3, member.password());
            return ps;
        }, keyHolder);
        return new Member(keyHolder.getKey().longValue(), member.name(), member.email(), member.password());
    }
}
