package com.cafe24.ypshop.frontend.service;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.cafe24.ypshop.frontend.dto.CartDTO;
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

	//회원_주문 목록 및 상세
	public Map<String, Object> orderList(String memberId, int period){
		JSONResultOrderList result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/order/list/"+memberId+"?period="+period, JSONResultOrderList.class);		
		Map<String, Object> returnData = (Map<String, Object>)result.getData();
		return returnData;
	}
	
	//회원_주문 페이지_선택 장바구니 목록
	public List<CartVO> cartList(List<Long> cartNoList){
		//장바구니 정보 호출 by 장바구니 번호
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setCartNoList(cartNoList);
		
		JSONResultCartList result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/order/cart/list", cartDTO, JSONResultCartList.class);		
		return result.getData();
	}
	
	private static class JSONResultGoods extends JSONResult<Boolean> {
	}
	
	private static class JSONResultOrderList extends JSONResult<Object> {
	}
	
	private static class JSONResultCartList extends JSONResult<List<CartVO>> {
	}
	
}
