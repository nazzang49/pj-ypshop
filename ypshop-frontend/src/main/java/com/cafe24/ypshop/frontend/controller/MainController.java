package com.cafe24.ypshop.frontend.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe24.ypshop.frontend.dto.ProductDTO;
import com.cafe24.ypshop.frontend.service.MainService;
import com.cafe24.ypshop.frontend.vo.CategoryVO;
import com.cafe24.ypshop.frontend.vo.PageVO;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	//메인_상품 목록
	@RequestMapping({"/", "main"})
	public String main(Model model,
					   @RequestParam(value="pageNum", required=true, defaultValue="1") int pageNum) {
		ProductDTO productDTO = mainService.main(pageNum);
		
		model.addAttribute("productList", productDTO.getProductList());
		model.addAttribute("categoryList", productDTO.getCategoryList());
		model.addAttribute("pageVO", productDTO.getPageVO());
		return "main/index";
	}
	
	//네이버_사용자 정보 조회
	@RequestMapping("/naver_info")
	public String naver(@RequestParam(value="access_token", required=true, defaultValue="") String accessToken) {
		mainService.getNaverInfo(accessToken);
		return "main/index";
	}
	
}
