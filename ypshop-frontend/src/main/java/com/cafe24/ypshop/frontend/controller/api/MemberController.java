package com.cafe24.ypshop.frontend.controller.api;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.cafe24.ypshop.frontend.dto.JSONResult2;
import com.cafe24.ypshop.frontend.service.MemberService;
import com.cafe24.ypshop.frontend.vo.MemberVO;

@RequestMapping("/api/member")
@RestController("memberAPIController")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//회원_조인_아이디중복체크
	@GetMapping("/checkid")
	public JSONResult2 checkid(@ModelAttribute MemberVO memberVO) {
		boolean flag = memberService.checkid(memberVO);
		JSONResult2 result = JSONResult2.success(flag);
		return result;
	}
	
}
