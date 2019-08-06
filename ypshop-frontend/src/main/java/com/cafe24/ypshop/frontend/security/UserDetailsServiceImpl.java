package com.cafe24.ypshop.frontend.security;

import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import com.cafe24.ypshop.frontend.service.MemberService;
import com.cafe24.ypshop.frontend.vo.MemberVO;

@Component
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private MemberService memberService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		MemberVO memberVO = memberService.loaduserbyusername(username);
		
		System.out.println("로그인 정보 : "+memberVO);
		
		SecurityUser securityUser = new SecurityUser();

		if(memberVO!=null) {
			securityUser.setPassword(memberVO.getPassword()); 		//credential
			securityUser.setUsername(memberVO.getId()); 			//principal
			//권한 저장 >> admin 페이지 이동 시 검증 필요
			securityUser.setAuthorities(Arrays.asList(new SimpleGrantedAuthority(memberVO.getRole())));
			
		}
		return securityUser;
	}
}
