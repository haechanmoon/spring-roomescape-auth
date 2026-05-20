package roomescape.auth;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.setRemoveAssertJRelatedElementsFromStackTrace;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

class TokenExtractorTest{

    @BeforeEach
    void Extractor_생성(){
        //given
        TokenExtractor tokenExtractor = new TokenExtractor();
    }

    @Test
    void Bearer_헤더에서_토큰_추출(){
        //given
        TokenExtractor extractor = new TokenExtractor();

        //when
        String token = extractor.extract("Bearer abcdefg");

        //then
        assertThat(token).isEqualTo("abcdefg");
    }

    @Test
    void 헤더가_null_이면_null_반환(){
        //given
        TokenExtractor extractor = new TokenExtractor();

        //when && then
        assertThat(extractor.extract(null)).isNull();
    }

    @Test
    void Bearer_로_시작하지_않으면_null_반환(){
        //given
        TokenExtractor extractor = new TokenExtractor();

        //when && then
        assertThat(extractor.extract("이상한값")).isNull();
    }
}
