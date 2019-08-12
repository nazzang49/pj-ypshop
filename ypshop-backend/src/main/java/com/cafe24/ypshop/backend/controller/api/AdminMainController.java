package com.cafe24.ypshop.backend.controller.api;


import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cafe24.ypshop.backend.dto.JSONResult;
import com.cafe24.ypshop.backend.service.AdminMainService;

import io.swagger.annotations.ApiOperation;

//(관리자) 메인 컨트롤러
@RequestMapping("/api/admin")
@RestController("adminMainAPIController")
public class AdminMainController {

	@Autowired
	private AdminMainService adminMainService;
	
	@ApiOperation(value="관리자 메인")
	@GetMapping(value= {"/main", "/"})
	public JSONResult getProductMemberCount() {
		
		//리턴 데이터
		Map<String, Long> data = adminMainService.상품_회원_주문_카운트();
		
		JSONResult result = JSONResult.success(data);
		return result;
	}
	
}
