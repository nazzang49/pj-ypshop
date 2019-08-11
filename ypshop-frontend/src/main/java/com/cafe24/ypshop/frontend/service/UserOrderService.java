package com.cafe24.ypshop.frontend.service;

import java.util.Arrays;
import java.util.List;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.cafe24.ypshop.frontend.dto.JSONResult;
import com.cafe24.ypshop.frontend.vo.CartVO;

@Service
public class UserOrderService {

	private final RestTemplate restTemplate = new RestTemplate();
	
	//장바구니_추가
	public boolean addCart(String memberId, Long productOptionNo, Long cartAmount, Long cartPrice) {
		
		
		//CartVO 생성
		CartVO cartVO = new CartVO();
		cartVO.setCartAmount(cartAmount);
		cartVO.setCartPrice(cartPrice);
		cartVO.setMemberId(memberId);
		cartVO.setProductOptionNo(productOptionNo);
		
		
		restTemplate.setMessageConverters(Arrays.asList(new MappingJackson2HttpMessageConverter()));
		
		JSONResultGoods result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/order/cart/add", cartVO, JSONResultGoods.class);
		return result.getData();
	}
	
	//장바구니_삭제
	public boolean deleteCart(List<Long> noList) {
		restTemplate.setMessageConverters(Arrays.asList(new MappingJackson2HttpMessageConverter()));
		JSONResultGoods result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/order/cart/delete", noList, JSONResultGoods.class);
		return result.getData();
	}
	
	private static class JSONResultGoods extends JSONResult<Boolean> {
	}
	
	
}
