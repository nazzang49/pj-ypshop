package com.cafe24.ypshop.frontend.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
					   Model model) throws UnsupportedEncodingException {
		
		//valid
		if(br.hasErrors()) {
			model.addAttribute(br.getModel());
			return "member/join";
		}
		
		//backend error
		boolean flag = memberService.join(memberVO);
		if(!flag) {
			model.addAttribute("join_result", false);
			return "redirect:/member/join";
		}
		
		String redirect = URLEncoder.encode("http://localhost:8090/ypshop-frontend/member/joinsuccess","utf-8");
		
		//get 방식 code 전송
		return "redirect:/member/joinsuccess?flag=true&redirect="+redirect;
	}	
	
	//회원_조인_성공 >> 문자 발송
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
	
	//회원_조회 및 수정_페이지
	@GetMapping("/info/{id}")
	public String info(@PathVariable(value="id") String id, Model model) {
		MemberVO memberVO = memberService.info(id);
		model.addAttribute("memberVO", memberVO);
		return "member/info";
	}
	
	//회원_조회 및 수정
	@PostMapping("/update")
	public String update(@ModelAttribute("memberVO") @Valid MemberVO memberVO,
					     BindingResult br,
					     Model model) {
		
		//valid
		if(br.hasErrors()) {
			model.addAttribute(br.getModel());
			return "member/info";
		}
		
		//backend error
		boolean flag = memberService.update(memberVO);
		if(!flag) {
			model.addAttribute("update_result", false);
			return "redirect:/member/info/"+memberVO.getId();
		}
		model.addAttribute("update_result", true);
		return "redirect:/";
	}
	
}
