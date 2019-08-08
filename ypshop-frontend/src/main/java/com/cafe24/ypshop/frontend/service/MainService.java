package com.cafe24.ypshop.frontend.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.cafe24.ypshop.frontend.dto.JSONResult;

@Service
public class MainService {

	private final RestTemplate restTemplate = new RestTemplate();
	
	//메인_상품 목록 >> 상품 목록, 카테고리 목록, 썸네일 목록
	public Map<String, Object> main() {
		JSONResultGoods result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/product/list", JSONResultGoods.class);		
		Map<String, Object> returnData = (Map<String, Object>)result.getData();
		return returnData;
	}
	
	//네이버_사용자 정보 조회
	public boolean getNaverInfo(String accessToken) {
		
		System.out.println("액세스 토큰 : "+accessToken);
		
		String token = accessToken;// 네이버 로그인 접근 토큰;
        String header = "Bearer " + token; // Bearer 다음에 공백 추가
        
        try {
            String apiURL = "https://openapi.naver.com/blog/listCategory.json";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("Authorization", header);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println("조회 결과 : "+response.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
		
        return true;
	}
	
	private static class JSONResultGoods extends JSONResult<Object> {
	}
}
