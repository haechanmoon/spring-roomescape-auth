package roomescape.service;

import org.springframework.stereotype.Service;
import roomescape.dao.MemberDao;
import roomescape.domain.Member;
import roomescape.exception.ResourceNotFoundException;

@Service
public class MemberService {
    private final MemberDao memberDao;

    public MemberService(MemberDao memberDao) {
        this.memberDao = memberDao;
    }

    public Member login(String email, String password) {
        return memberDao.findByEmailAndPassword(email, password)
                .orElseThrow(() -> new ResourceNotFoundException("이메일이나 비밀번호가 일치하지 않습니다.", "AUTH_FAILED"));
    }

    public Member findById(Long id) {
        return memberDao.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("존재하지 않는 회원입니다.", "MEMBER_NOT_FOUND"));
    }
}
