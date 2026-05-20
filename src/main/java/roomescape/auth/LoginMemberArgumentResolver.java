package roomescape.auth;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import java.util.Arrays;
import org.springframework.core.MethodParameter;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;
import roomescape.domain.Member;
import roomescape.exception.UnauthorizedException;
import roomescape.service.MemberService;

@Component
public class LoginMemberArgumentResolver implements HandlerMethodArgumentResolver {

    private final JwtTokenProvider jwtTokenProvider;
    private final MemberService memberService;
    private final TokenExtractor tokenExtractor;

    public LoginMemberArgumentResolver(JwtTokenProvider jwtTokenProvider, MemberService memberService,
                                       TokenExtractor tokenExtractor) {
        this.jwtTokenProvider = jwtTokenProvider;
        this.memberService = memberService;
        this.tokenExtractor = tokenExtractor;
    }

    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        return parameter.hasParameterAnnotation(LoginMember.class) 
                && parameter.getParameterType().equals(Member.class);
    }

    @Override
    public Object resolveArgument(@NonNull MethodParameter parameter, ModelAndViewContainer mavContainer,
                                  NativeWebRequest webRequest, WebDataBinderFactory binderFactory) {
        HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();
        String token = extractTokenFromCookie(request);

        if(token ==null){
            token = extractTokenFromHeader(request);
        }

        if (token == null || !jwtTokenProvider.validateToken(token)) {
            throw new UnauthorizedException("로그인이 필요합니다.");
        }

        Long memberId = jwtTokenProvider.getMemberId(token);
        return memberService.findById(memberId);
    }

    private String extractTokenFromCookie(HttpServletRequest request) {
        if (request.getCookies() == null) {
            return null;
        }
        return Arrays.stream(request.getCookies())
                .filter(cookie -> "token".equals(cookie.getName()))
                .map(Cookie::getValue)
                .findFirst()
                .orElse(null);
    }

    private String extractTokenFromHeader(HttpServletRequest request){
        String header =  request.getHeader("Authorization");
        return tokenExtractor.extract(header);
    }
}
