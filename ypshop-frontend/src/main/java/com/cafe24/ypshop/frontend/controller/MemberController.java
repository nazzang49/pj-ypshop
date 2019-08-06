package com.cafe24.ypshop.frontend.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe24.ypshop.frontend.service.MemberService;
import com.cafe24.ypshop.frontend.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//회원_조인_페이지
	@GetMapping("/join")
	public String join(@ModelAttribute("memberVO") MemberVO memberVO) {
		return "member/join";
	}
	
	//회원_조인
	@PostMapping("/join")
	public String join(@ModelAttribute("memberVO") @Valid MemberVO memberVO,
					   BindingResult br,
					   Model model) {
		
		//valid
		if(br.hasErrors()) {
			model.addAttribute(br.getModel());
			return "member/join";
		}
		
		//backend error
		boolean flag = memberService.join(memberVO);
		if(!flag) {
			model.addAttribute("join_result", false);
			return "member/join";
		}
		
		return "redirect:/member/joinsuccess";
	}
	
	//회원_조인_성공
	@GetMapping("/joinsuccess")
	public String joinsuccess() {
		return "member/joinsuccess";
	}
	
	//회원_로그인_페이지
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
	
	//회원_로그인 >> spring security
	
	
}
