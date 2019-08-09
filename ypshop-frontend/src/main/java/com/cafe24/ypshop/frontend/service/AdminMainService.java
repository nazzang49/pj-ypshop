package com.cafe24.ypshop.frontend.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.cafe24.ypshop.frontend.dto.JSONResult;

@Service
public class AdminMainService {

	private final RestTemplate restTemplate = new RestTemplate();
	
	//메인_상품 수, 회원 수
	public Map<String, Long> getProductMemberCount() {
		JSONResultGoods result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/admin/main", JSONResultGoods.class);		
		Map<String, Long> returnData = (Map<String, Long>)result.getData();
		return returnData;
	}
	
	//솔라피 웹 발신 문자 테스트
	public boolean smsTest(String accessToken, String text) throws IOException {
		
		String targetUrl = "http://api.solapi.com/messages/v4/send";
	    String parameters = "{\"message\":{\"to\":\"01094414951\",\"from\":\"01094414951\",\"text\":\"test message\"}}";

	    URL url = new URL(targetUrl);
	    HttpURLConnection con = (HttpURLConnection) url.openConnection();

	    con.setRequestMethod("POST");

	    con.setRequestProperty("Authorization", "Bearer "+accessToken);
	    con.setRequestProperty("Content-Type", "application/json");

	    con.setDoOutput(true);
	    DataOutputStream wr = new DataOutputStream(con.getOutputStream());
	    wr.writeBytes(parameters);
	    wr.flush();
	    wr.close();

	    int responseCode = con.getResponseCode();
	    BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
	    String line;
	    StringBuffer response = new StringBuffer();
	    while ((line = in.readLine()) != null) {
	      response.append(line);
	    }
	    in.close();

	    System.out.println("HTTP response code : " + responseCode);
	    System.out.println("HTTP body : " + response.toString());
	    
	    return true;
	  }
	
	private static class JSONResultGoods extends JSONResult<Object> {
	}
	
}
