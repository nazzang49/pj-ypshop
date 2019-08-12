package com.cafe24.ypshop.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe24.ypshop.frontend.security.AuthUser;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.AdminOrderService;
import com.cafe24.ypshop.frontend.vo.OrderVO;

@Controller
@RequestMapping("/admin")
public class AdminOrderController {

	@Autowired
	private AdminOrderService adminOrderService;
	
	//관리자_주문관리
	@GetMapping("/order")
	public String productList(@AuthUser SecurityUser securityUser, Model model) {
		List<OrderVO> orderList = adminOrderService.orderList();
		model.addAttribute("orderList", orderList);
		
		return "admin/admin-order";
	}
	
}
