package com.cafe24.ypshop.frontend.service;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.cafe24.ypshop.frontend.dto.JSONResult;

@Service
public class MainService {

	private final RestTemplate restTemplate = new RestTemplate();
	
	//메인 페이지 이동
	public String productList() {
		JSONResultGoods result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/main", JSONResultGoods.class);
		return (String)result.getData();
	}
	
	// DTO Class
	private static class JSONResultGoods extends JSONResult<Object> {
	}
}
