package com.cafe24.ypshop.frontend.service;

import java.util.Map;

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
		JSONResultGoods result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/member/join", memberVO, JSONResultGoods.class);
		System.out.println("회원가입 성공여부 : "+(Boolean)result.getData());
		return (Boolean)result.getData();
	}
	
	//회원_조인_아이디중복체크
	public boolean checkid(MemberVO memberVO) {
		//getForObject >> Object 타입 결과 리턴 >> 현재 메소드 Map
		JSONResultGoods result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/member/checkid?id="+memberVO.getId(), JSONResultGoods.class);
		//response
		Map<String, Object> returnData = (Map<String, Object>)result.getData();
		return (Boolean)returnData.get("flag");
	}
	
	// DTO Class
	private static class JSONResultGoods extends JSONResult<Object> {
	}
	
}
