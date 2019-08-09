package com.cafe24.ypshop.frontend.controller;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.ypshop.frontend.security.AuthUser;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.AdminMainService;

@Controller
@RequestMapping("/admin")
public class AdminMainController {

	@Autowired
	private AdminMainService adminMainService;
	
	//메인_상품 수, 회원 수
	@RequestMapping({"", "/", "main"})
	public String main(@AuthUser SecurityUser securityUser, Model model) {
		
		Map<String, Long> map = adminMainService.getProductMemberCount();
		model.addAttribute("map", map);
		
		return "admin/admin-index";
	}
	
}
