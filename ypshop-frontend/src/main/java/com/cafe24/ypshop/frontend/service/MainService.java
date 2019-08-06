package com.cafe24.ypshop.frontend.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.cafe24.ypshop.frontend.dto.JSONResult;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Service
public class MainService {

	private final RestTemplate restTemplate = new RestTemplate();
	
	//메인_상품 목록
	public List<ProductVO> productList() {
		JSONResultGoods result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/product/list", JSONResultGoods.class);
		
		System.out.println("들어온다11");
		
		Map<String, Object> returnData = (Map<String, Object>)result.getData();
		return (List<ProductVO>)returnData.get("productList");
	}
	
	private static class JSONResultGoods extends JSONResult<Object> {
	}
}
