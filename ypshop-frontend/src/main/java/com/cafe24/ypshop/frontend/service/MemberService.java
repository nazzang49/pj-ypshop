package com.cafe24.ypshop.frontend.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.cafe24.ypshop.frontend.dto.JSONResult;
import com.cafe24.ypshop.frontend.vo.MemberVO;

//회원
@Service
public class MemberService {

	private final RestTemplate restTemplate = new RestTemplate();
		
	//회원_조인
	public boolean join(MemberVO memberVO) {
		
		restTemplate.setMessageConverters(Arrays.asList(new MappingJackson2HttpMessageConverter()));
		
		JSONResultGoods result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/member/join", memberVO, JSONResultGoods.class);
		//response
		Map<String, Object> returnData = (Map<String, Object>)result.getData();
		return (Boolean)returnData.get("flag");
	}
	
	//회원_조인_아이디중복체크
	public boolean checkid(MemberVO memberVO) {
		//getForObject >> Object 타입 결과 리턴 >> 현재 메소드 Map
		JSONResultGoods result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/member/checkid?id="+memberVO.getId(), JSONResultGoods.class);
		//response
		Map<String, Object> returnData = (Map<String, Object>)result.getData();
		return (Boolean)returnData.get("flag");
	}
	
	//회원_로그인_확인
	public MemberVO loaduserbyusername(String username) {
		
		MemberVO memberVO = new MemberVO();
		memberVO.setId(username);
		
		restTemplate.setMessageConverters(Arrays.asList(new MappingJackson2HttpMessageConverter()));
		
		//getForObject >> Object 타입 결과 리턴 >> 현재 메소드 Map
		JSONResultMemberVO result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/member/login", memberVO, JSONResultMemberVO.class);
		//response
				
		return result.getData();
	}
	
	//회원_조회
	public MemberVO info(String id) {
		JSONResultMemberVO result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/member/info/"+id, JSONResultMemberVO.class);
		return result.getData();
	}
	
	//회원_수정
	public boolean update(MemberVO memberVO) {
		restTemplate.setMessageConverters(Arrays.asList(new MappingJackson2HttpMessageConverter()));
		JSONResultGoods result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/member/update", memberVO, JSONResultGoods.class);
		
		//backend vaild
		if("fail".equals(result.getResult())) {
			return false;
		}
		
		//response
		Map<String, Object> returnData = (Map<String, Object>)result.getData();
		return (Boolean)returnData.get("flag");
	}
	
	//회원가입_문자 발송_코드 발급 by solapi
	public String getCode() throws UnsupportedEncodingException {
		
		String code="";
		
		String redirect = URLEncoder.encode("http://localhost:8090/ypshop-frontend/admin","utf-8");
	 	//솔라피 메시지 발송
	 	String uri = "https://api.solapi.com/oauth2/v1/authorize?"+
	 				 "client_id=CIDK6CLROPWNPPCG&" +
	 				 "redirect_uri="+redirect+"&" +
	 				 "response_type=code&" +
	 				 "scope=message:write&" +
	 				 "state=ADFN31fmD1fa4";
	    
	    try {
	      URL url = new URL(uri);
	      HttpURLConnection con = (HttpURLConnection)url.openConnection();
	      
//	      Map<String,Object> params = new LinkedHashMap<>();
//	      params.put("client_id", "CIDK6CLROPWNPPCG");
//	      params.put("response_type", "code");
//	      params.put("redirect_uri", redirect);
//	      params.put("scope", "message:write");
//	      params.put("state", "ADFN31fmD1fa4");
	      
//	      StringBuilder postData = new StringBuilder();
//	      for(Map.Entry<String,Object> param : params.entrySet()) {
//	          if(postData.length() != 0) postData.append('&');
//	          postData.append(URLEncoder.encode(param.getKey(), "UTF-8"));
//	          postData.append('=');
//	          postData.append(URLEncoder.encode(String.valueOf(param.getValue()), "UTF-8"));
//	      }
//	      byte[] postDataBytes = postData.toString().getBytes("UTF-8");
	      
	      con.setRequestMethod("GET");
//	      con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
//	      con.setRequestProperty("Content-Length", String.valueOf(postDataBytes.length));
//	      con.setDoOutput(true);
//	      con.getOutputStream().write(postDataBytes);

	      int responseCode = con.getResponseCode();
	      BufferedReader br;
	      System.out.print("responseCode="+responseCode);
	      
	      if(responseCode==200) { // 정상 호출
	        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	      } else {  // 에러 발생
	        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	      }
	      String inputLine;
	      StringBuffer res = new StringBuffer();
	      while ((inputLine = br.readLine()) != null) {
	        res.append(inputLine);
	      }
	      
	      br.close();
	      if(responseCode==200) {
	    	  
//	    	  	res.
	    	  
	    	  	CustomJsonParse cjp = new CustomJsonParse();
	    	  	code = cjp.getCode(res.toString());
	    	  	System.out.println("코드 발급 요청 응답 : "+res.toString());
	    	}
	    } catch (Exception e) {
	    	System.out.println(e);
	    }
	 	
	    return code;
	}
	
	//회원가입_문자 발송 by solapi
	public static boolean joinSuccessSms(String accessToken) throws IOException {

		String targetUrl = "http://api.solapi.com/messages/v4/send";
		String parameters = "{\"message\":{\"to\":\"01094414951\",\"from\":\"01094414951\",\"text\":\"Welcome to Ypshop\"}}";

		URL url = new URL(targetUrl);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();

		con.setRequestMethod("POST");
		con.setRequestProperty("Authorization", "Bearer " + accessToken);
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

		return true;
	}
	
	// DTO Class
	private static class JSONResultGoods extends JSONResult<Object> {
	}
	
	private static class JSONResultMemberVO extends JSONResult<MemberVO> {
	}
	
}
