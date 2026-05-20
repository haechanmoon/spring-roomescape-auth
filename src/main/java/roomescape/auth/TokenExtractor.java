package roomescape.auth;

public class TokenExtractor {

    public String extract(String header) {
        if(header==null||!header.startsWith("Bearer ")){
            return null;
        }
        return header.substring(7);
    }
}
