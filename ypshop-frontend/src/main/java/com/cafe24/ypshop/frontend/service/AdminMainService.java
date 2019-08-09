package com.cafe24.ypshop.frontend.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
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
	
	private static class JSONResultGoods extends JSONResult<Object> {
	}
	
}
