package com.cafe24.ypshop.frontend.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import com.cafe24.ypshop.frontend.dto.JSONResult;
import com.cafe24.ypshop.frontend.dto.OrderDTO;
import com.cafe24.ypshop.frontend.vo.OrderVO;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Service
public class AdminOrderService {

	private final RestTemplate restTemplate = new RestTemplate();
	
	//관리자_주문 목록
	public List<OrderVO> orderList() {
		JSONResultOrderList result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/admin/order/list", JSONResultOrderList.class);		
		return result.getData();
	}
	
	//관리자_주문 상태 수정
	public boolean update(List<Long> noList, String status) {
		restTemplate.setMessageConverters(Arrays.asList(new MappingJackson2HttpMessageConverter()));
		
		OrderDTO orderDTO = new OrderDTO(); 
		orderDTO.setOrderNoList(noList);
		orderDTO.setStatus(status);
		
		JSONResultUpdate result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/admin/order/update", orderDTO, JSONResultUpdate.class);
		return result.getData();
	}
	
	private static class JSONResultOrderList extends JSONResult<List<OrderVO>> {
	}
	
	private static class JSONResultUpdate extends JSONResult<Boolean> {
	}
	
}
