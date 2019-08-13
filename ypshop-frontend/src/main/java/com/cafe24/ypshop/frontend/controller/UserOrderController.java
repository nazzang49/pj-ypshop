package com.cafe24.ypshop.frontend.controller;

import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.UserOrderService;
import com.cafe24.ypshop.frontend.service.UserProductService;
import com.cafe24.ypshop.frontend.vo.CartVO;
import com.cafe24.ypshop.frontend.vo.ImageVO;
import com.cafe24.ypshop.frontend.vo.OrderDetailVO;
import com.cafe24.ypshop.frontend.vo.OrderVO;
import com.cafe24.ypshop.frontend.vo.ProductOptionVO;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Controller
@RequestMapping("/member/order")
public class UserOrderController {

	@Autowired
	private UserOrderService userOrderService;
	
	//주문_상세
	@GetMapping("/list")
	public String list(@AuthenticationPrincipal SecurityUser securityUser,
					   @RequestParam(value="period", required=true, defaultValue="-3") int period,
					   Model model) {
		
		//로그인 아이디, 조회 기간
		Map<String, Object> map = userOrderService.orderList(securityUser.getUsername(), period);
		
		List<OrderVO> orderList = (List<OrderVO>)map.get("orderList");
		List<OrderDetailVO> orderDetailList = (List<OrderDetailVO>)map.get("orderDetailList");
		
		String jsonArrayString = JSONArray.toJSONString(orderDetailList);
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("jsonArrayString", jsonArrayString);
		
		return "member/mypage-orderList";
	}
	
	//회원_주문_페이지 >> 선택 장바구니 번호 리스트 추출
	@GetMapping("/orderform")
	public String orderPage(@RequestParam(value="noList", required=true, defaultValue="0") List<Long> cartNoList, 
							Model model) {
		
		//xml 파일에서 forEach 구문 적용
		List<CartVO> cartList = userOrderService.cartList(cartNoList);
		model.addAttribute("cartList", cartList);
		
		return "member/mypage-orderform";
	}
	
}
