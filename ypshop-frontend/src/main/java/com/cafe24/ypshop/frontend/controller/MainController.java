package com.cafe24.ypshop.frontend.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cafe24.ypshop.frontend.service.MainService;
import com.cafe24.ypshop.frontend.vo.CategoryVO;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	//메인_상품 목록
	@RequestMapping({"/", "main"})
	public String main(Model model) {
		Map<String, Object> returnData = mainService.main();
		
		System.out.println("상품 목록 : "+returnData.get("productList"));
		System.out.println("카테고리 목록 : "+returnData.get("categoryList"));
		
		model.addAttribute("productList", (List<ProductVO>)returnData.get("productList"));
		model.addAttribute("categoryList", (List<CategoryVO>)returnData.get("categoryList"));
		return "main/index";
	}
	
}
