package com.cafe24.ypshop.frontend.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cafe24.ypshop.frontend.service.UserProductService;
import com.cafe24.ypshop.frontend.vo.ImageVO;
import com.cafe24.ypshop.frontend.vo.ProductOptionVO;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Controller
@RequestMapping("/product")
public class UserProductController {

	@Autowired
	private UserProductService userProductService;
	
	//상품_상세
	@GetMapping("/view/{no}")
	public String view(@PathVariable(value="no") Long no, Model model) {
		
		Map<String, Object> map = userProductService.getProductDetail(no);
		
		//1. 상품 기본
		
		//2. 상품 옵션
		List<ImageVO> imageList = (List<ImageVO>)map.get("imageList");
		
		//3. 상품 이미지
		List<ProductOptionVO> productOptionList = (List<ProductOptionVO>)map.get("productOptionList");
		
		model.addAttribute("productVO", map.get("productVO"));
		model.addAttribute("imageList", imageList);
		model.addAttribute("productOptionList", productOptionList);
		
		return "product/view";
	}
	
}
