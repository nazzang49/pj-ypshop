package com.cafe24.ypshop.frontend.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.cafe24.ypshop.frontend.dto.JSONResult;
import com.cafe24.ypshop.frontend.vo.MemberVO;

@Service
public class AdminUserService {

	private final RestTemplate restTemplate = new RestTemplate();
	
	//관리자_회원 목록
	public List<MemberVO> userList() {
		JSONResultUserList result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/admin/user/list", JSONResultUserList.class);		
		return result.getData();
	}
	
	//관리자_회원 삭제
	public Boolean delete(String id) {
		JSONResultGoods result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/admin/user/delete?id="+id, JSONResultGoods.class);
		
		System.out.println("삭제 결과 : "+result.getData());
		
		return result.getData();
	}
	
	private static class JSONResultGoods extends JSONResult<Boolean> {
	}
	
	private static class JSONResultUserList extends JSONResult<List<MemberVO>> {
	}
	
}
