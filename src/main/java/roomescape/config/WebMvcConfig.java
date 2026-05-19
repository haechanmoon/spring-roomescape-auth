package roomescape.config;

import java.util.List;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import roomescape.auth.AuthInterceptor;
import roomescape.auth.LoginMemberArgumentResolver;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    private final AuthInterceptor authInterceptor;
    private final LoginMemberArgumentResolver loginMemberArgumentResolver;

    public WebMvcConfig(AuthInterceptor authInterceptor, LoginMemberArgumentResolver loginMemberArgumentResolver) {
        this.authInterceptor = authInterceptor;
        this.loginMemberArgumentResolver = loginMemberArgumentResolver;
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(authInterceptor)
                .addPathPatterns("/reservations/**")
                .excludePathPatterns("/login"); // 필요한 경우 추가 제외 패턴
    }

    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers) {
        resolvers.add(loginMemberArgumentResolver);
    }
}
