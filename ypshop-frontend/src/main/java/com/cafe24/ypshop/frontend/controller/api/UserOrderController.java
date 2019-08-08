package com.cafe24.ypshop.frontend.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cafe24.ypshop.frontend.dto.JSONResult2;
import com.cafe24.ypshop.frontend.security.AuthUser;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.UserOrderService;

@RequestMapping("/api/order")
@RestController("userOrderAPIController")
public class UserOrderController {

	@Autowired
	private UserOrderService userOrderService;
	
	//회원_조인_아이디중복체크
	@PostMapping("/cart/add")
	public JSONResult2 addCart(@AuthenticationPrincipal SecurityUser securityUser,
							   @RequestParam(value="productOptionNo", required=true, defaultValue="0") Long productOptionNo,
							   @RequestParam(value="cartAmount", required=true, defaultValue="0") Long cartAmount,
							   @RequestParam(value="cartPrice", required=true, defaultValue="0") Long cartPrice) {
		
		
		System.out.println("들어온다 프런트 엔드");
		
		//현재 로그인 아이디 추출
		String memberId = (String)securityUser.getUsername();
		
		System.out.println("로그인 아이디 : "+memberId);
		
		
		boolean flag = userOrderService.addCart(memberId, productOptionNo, cartAmount, cartPrice);
		
		JSONResult2 result = JSONResult2.success(flag);
		return result;
	}
	
}
