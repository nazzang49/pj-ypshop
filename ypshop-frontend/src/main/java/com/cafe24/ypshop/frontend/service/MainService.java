package com.cafe24.ypshop.frontend.service;

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
	
	private static class JSONResultGoods extends JSONResult<Object> {
	}
}
