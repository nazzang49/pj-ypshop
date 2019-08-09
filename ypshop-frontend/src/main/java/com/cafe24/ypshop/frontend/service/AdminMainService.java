package com.cafe24.ypshop.frontend.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
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
	
	//네이버 쇼핑 인사이트_검색
	@SuppressWarnings("unchecked")
	public String getNaverSearch(String searchKwd) {
		
		String clientId = "dsI7JYSZwPsFpAdXsfr2";// 애플리케이션 클라이언트 아이디 값";
		String clientSecret = "Uh4TXeTr3V";// 애플리케이션 클라이언트 시크릿 값";
		StringBuffer response = new StringBuffer();

		try {
			String apiURL = "https://openapi.naver.com/v1/datalab/shopping/categories";
			String body = "{\"gender\":\"m\",\"endDate\":\"2017-09-30\",\"keyword\":\""+searchKwd+"\",\"category\":[{\"name\":\"패션의류\",\"param\":[\"50000000\"]}, {\"name\":\"화장품/미용\",\"param\":[\"50000002\"]}],\"device\":\"pc\",\"startDate\":\"2017-08-01\",\"timeUnit\":\"week\",\"_debug\":false,\"_unsafe\":false,\"_cnt\":false}";
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			
			
//			body = URLEncoder.encode(body,"utf-8");
			
			//카테고리용 jsonArray 생성
			JSONArray subData = new JSONArray();
			Object obj = "50000000";
			subData.add(obj);
			
			JSONObject json = new JSONObject();
			json.put("startDate", "2017-08-01");
			json.put("endDate", "2017-09-30");
			json.put("timeUnit", "month");
			json.put("keyword", "정장");
			json.put("category", subData);
			json.put("device", "pc");
			json.put("startDate", "2017-08-01");
			json.put("gender", "m");
			
			
//			Map<String,Object> params = new LinkedHashMap<>();
//		      params.put("startDate", "2017-08-01");
//		      params.put("endDate", "2017-09-30");
//		      params.put("timeUnit", "month");
//		      params.put("keyword", "정장");
//		      params.put("category", "50000000");
//		      params.put("device", "pc");
//		      params.put("gender", "m");
//		      
//		      
//		      StringBuilder postData = new StringBuilder();
//		      for(Map.Entry<String,Object> param : params.entrySet()) {
//		          if(postData.length() != 0) postData.append('&');
//		          postData.append(URLEncoder.encode(param.getKey(), "UTF-8"));
//		          postData.append('=');
//		          postData.append(URLEncoder.encode(String.valueOf(param.getValue()), "UTF-8"));
//		      }
//		      byte[] postDataBytes = postData.toString().getBytes("UTF-8");
			
			con.setRequestMethod("POST");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			con.setRequestProperty("Content-Type", "application/json");

			con.setDoOutput(true);

			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(body);
            wr.flush();
            wr.close();

			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "utf-8"));
			}

			String inputLine;
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();
			System.out.println("검색 응답 결과 : "+response.toString());

		} catch (Exception e) {
			System.out.println(e);
		}
		
		return response.toString();
	}
	
	private static class JSONResultGoods extends JSONResult<Object> {
	}
	
}
