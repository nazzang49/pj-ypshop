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
