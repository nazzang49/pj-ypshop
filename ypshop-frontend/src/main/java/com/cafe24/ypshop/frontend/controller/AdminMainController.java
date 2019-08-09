package com.cafe24.ypshop.frontend.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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
	@RequestMapping(value={"", "/", "main"}, produces = "application/text; charset=utf8")
	public String main(@AuthUser SecurityUser securityUser,
					   @RequestParam(value="result", required=false) String result,
					   Model model) {
		
		Map<String, Long> map = adminMainService.getProductMemberCount();
		model.addAttribute("map", map);
		
		if(result!=null) {
			model.addAttribute("result", result);
		}
		
		return "admin/admin-index";
	}
	
	//네이버 쇼핑 인사이트_검색
	@RequestMapping("/naverSearch")
	public String naverSearch(@AuthUser SecurityUser securityUser,
							  @RequestParam(value="searchKwd", required=true, defaultValue="") String searchkwd,
							  Model model) throws UnsupportedEncodingException {
		
		String result = adminMainService.getNaverSearch(searchkwd);
		result = URLEncoder.encode(result, "utf-8");
		
		return "redirect:/admin?result="+result;
	}
	
}
