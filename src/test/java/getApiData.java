import org.testng.annotations.Test;

import static io.restassured.RestAssured.given;

public class getApiData {

    String url = " https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz&camera=rhaz&api_key=DEMO_KEY";

    @Test
    public void getResponseBody(){
        given().
                when().
                get(url).
                then().
                statusCode(200);
    }

}
