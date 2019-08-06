package com.cafe24.ypshop.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class UserProductController {

	//상품_상세
	@GetMapping("/view/{no}")
	public String view(@PathVariable(value="no") Long no, Model model) {
		
		
		System.out.println("상품 번호 : "+no);
		
//		List<ProductVO> productList = mainService.productList();
		model.addAttribute("no", no);
		
		return "product/view";
	}
	
}
