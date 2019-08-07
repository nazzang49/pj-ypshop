package com.cafe24.ypshop.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe24.ypshop.frontend.security.AuthUser;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.AdminUserService;
import com.cafe24.ypshop.frontend.vo.MemberVO;

@Controller
@RequestMapping("/admin")
public class AdminUserController {

	@Autowired
	private AdminUserService adminUserService;
	
	//관리자_회원관리
	@GetMapping("/user")
	public String userList(@AuthUser SecurityUser securityUser, Model model) {
		List<MemberVO> userList = adminUserService.userList();
		model.addAttribute("userList", userList);
		
		return "admin/admin-user";
	}
	
}
