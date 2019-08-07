package com.cafe24.ypshop.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
				
//		model.addAttribute("productList", (List<ProductVO>)returnData.get("productList"));
//		model.addAttribute("categoryList", (List<CategoryVO>)returnData.get("categoryList"));
		return "admin/admin-index";
	}
	
}
