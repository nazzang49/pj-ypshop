package com.cafe24.ypshop.frontend.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.cafe24.ypshop.frontend.dto.JSONResult2;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.UserOrderService;

@RequestMapping("/api/order")
@RestController("userOrderAPIController")
public class UserOrderController {

	@Autowired
	private UserOrderService userOrderService;
	
	//회원_장바구니 추가
	@PostMapping("/cart/add")
	public JSONResult2 addCart(@AuthenticationPrincipal SecurityUser securityUser,
							   @RequestParam(value="productOptionNo", required=true, defaultValue="0") Long productOptionNo,
							   @RequestParam(value="cartAmount", required=true, defaultValue="0") Long cartAmount,
							   @RequestParam(value="cartPrice", required=true, defaultValue="0") Long cartPrice) {
		
		
		//현재 로그인 아이디 추출
		String memberId = (String)securityUser.getUsername();
		boolean flag = userOrderService.addCart(memberId, productOptionNo, cartAmount, cartPrice);
		JSONResult2 result = JSONResult2.success(flag);
		return result;
	}
	
	//회원_장바구니 삭제
	@GetMapping("/cart/delete")
	public JSONResult2 deleteCart(@RequestParam(value="noList", required=true, defaultValue="0") List<Long> noList) {
		boolean flag = userOrderService.deleteCart(noList);
		JSONResult2 result = JSONResult2.success(flag);
		return result;
	}
	
}
