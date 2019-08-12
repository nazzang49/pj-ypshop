package com.cafe24.ypshop.frontend.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cafe24.ypshop.frontend.dto.JSONResult2;
import com.cafe24.ypshop.frontend.service.AdminOrderService;

@RequestMapping("/api/admin/order")
@RestController("adminOrderAPIController")
public class AdminOrderController {
	
	@Autowired
	private AdminOrderService adminOrderService;
	
	//회원_주문상태 수정
	@GetMapping("/update")
	public JSONResult2 update(@RequestParam(value="noList", required=true, defaultValue="0") List<Long> noList,
							  @RequestParam(value="status", required=true, defaultValue="") String status) {
		
		System.out.println("수정 번호 : "+noList.get(1));
		
		boolean flag = adminOrderService.update(noList, status);
		JSONResult2 result = JSONResult2.success(flag);
		return result;
	}
	
}