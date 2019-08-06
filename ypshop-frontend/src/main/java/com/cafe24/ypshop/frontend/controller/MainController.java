package com.cafe24.ypshop.frontend.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cafe24.ypshop.frontend.service.MainService;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	//메인_상품 목록
	@RequestMapping({"/", "main"})
	public String main(Model model) {
		mainService.productList();
		return "main/index";
	}
	
}
