package com.cafe24.ypshop.frontend.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cafe24.ypshop.frontend.dto.JSONResult2;
import com.cafe24.ypshop.frontend.security.AuthUser;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.AdminUserService;

@RequestMapping("/api/admin/user")
@RestController("adminUserAPIController")
public class AdminUserController {

	@Autowired
	private AdminUserService adminUserService;
	
	//관리자_회원관리
	@GetMapping("/delete")
	public JSONResult2 delete(@AuthUser SecurityUser securityUser, Model model,
						 	  @RequestParam(value="id", required=true, defaultValue="") String id) {
		
		boolean flag = adminUserService.delete(id);
		
		System.out.println("회원 삭제 결과 : "+flag);
		
		JSONResult2 result = JSONResult2.success(flag);
		return result;
	}
	
}
