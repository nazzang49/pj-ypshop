package com.cafe24.ypshop.frontend.service;

import java.util.Arrays;
import java.util.Map;

import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
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
		
		System.out.println("리턴 데이터 : "+result.getData());
		
		return result.getData();
	}
	
	// DTO Class
	private static class JSONResultGoods extends JSONResult<Object> {
	}
	
	private static class JSONResultMemberVO extends JSONResult<MemberVO> {
	}
	
}
