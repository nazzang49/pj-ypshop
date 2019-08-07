package com.cafe24.ypshop.frontend.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.cafe24.ypshop.frontend.dto.JSONResult;

@Service
public class UserProductService {

	private final RestTemplate restTemplate = new RestTemplate();
	
	//상품_상세_기본
	public Map<String, Object> getProductDetail(Long no) {
		JSONResultGoods result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/product/view/"+no, JSONResultGoods.class);		
		return (Map<String, Object>)result.getData();
	}
	
	private static class JSONResultGoods extends JSONResult<Object> {
	}
	
}
