package com.cafe24.ypshop.frontend.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cafe24.ypshop.frontend.dto.JSONResult2;
import com.cafe24.ypshop.frontend.security.AuthUser;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.AdminProductService;

@RequestMapping("/api/admin/product")
@RestController("adminProductAPIController")
public class AdminProductController {

	@Autowired
	private AdminProductService adminProductService;
	
	//관리자_상품옵션추가_중복체크
	@GetMapping("/{productNo}/productOption/checkExist")
	public JSONResult2 productOptionCheckExist(@AuthUser SecurityUser securityUser, Model model,
										  	   @RequestParam(value="firstOptionNo", required=true, defaultValue="0") Long firstOptionNo,
										  	   @RequestParam(value="secondOptionNo", required=true, defaultValue="0") Long secondOptionNo,
										  	   @PathVariable(value="productNo") Long productNo) {
		
		//입력된 상품옵션 1개씩 중복 체크
		boolean flag = adminProductService.checkExist(firstOptionNo, secondOptionNo);
		return JSONResult2.success(flag);
	}	
	
}
