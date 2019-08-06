package com.cafe24.config.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.cafe24.ypshop.frontend.security.CustomPasswordEncoder;
import com.cafe24.ypshop.frontend.security.CustomUrlAuthenticationSuccessHandler;

//spring security
@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	//spring security filter 연결 작업
	//WebSecurity 객체 >> springSecurityFilterChain을 이름으로 가지는 DelegatingFilterProxy 빈 생성
	//springSecurityFilterChain은 위 주석 처리 된 filter들 위임
	@Override
	public void configure(WebSecurity web) throws Exception {
		//super.configure(web);
		
		//ACL(Access Control List)에 등록하지 않을 URL = 인증 없이 통과
		//(방법 1)ant 표현식 >> default
		//web.ignoring().antMatchers("/assets/**");
		//web.ignoring().antMatchers("/favicon.ico");
		
		//(방법2)정규 표현식
		//A = 모든
		//Z = 종료
		web.ignoring().regexMatchers("\\A/assets/.*\\Z");
		web.ignoring().regexMatchers("\\A/favicon.ico\\Z");
	}
	
	//Interceptor URL의 요청 보호 방법 설정 = ACL
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//default >> 모든 페이지 접속 요청 차단
		//super.configure(http);
		
		//1. Authenticated = 인증 된 상태만 접근 가능
		http.authorizeRequests()
		.antMatchers("/member/update", "/member/logout", "/member/info").authenticated()
		
		//2. ADMIN Authorization = 관리자 권한 인증 >> 3개 방법
		//.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
		.antMatchers("/admin/**").hasAuthority("ADMIN")
		//.antMatchers("/admin**").hasRole("ADMIN")
		
		//3. 그 외 나머지 모두 허용 >> 2개 방법
		//.antMatchers("/**").permitAll()
		.anyRequest().permitAll();
		
		//5 CSRF 설정 (임시)
		http.csrf().disable();
		
		//6. 로그인 설정
		http.formLogin()
		.loginPage("/member/login")
		//form 태그의 액션 url과 동일
		.loginProcessingUrl("/member/auth")
		.failureUrl("/member/login?result=fail")
		.successHandler(authenticationSuccessHandler())
		//.defaultSuccessUrl("/", true)
		//form 태그에서 데이터 전송 시 사용하는  파라미터명과 동일
		.usernameParameter("id")
		.passwordParameter("password");
		
		//7. 로그아웃 설정
		http.logout()
		.logoutRequestMatcher(new AntPathRequestMatcher("/member/logout"))
		//로그아웃 성공 시 이동 경로
		.logoutSuccessUrl("/")
		//세션 재발급
		.deleteCookies("JSESSIONID")
		.invalidateHttpSession(true)
		.and()
		.exceptionHandling();
		
		//8. rememberme 설정
		http.rememberMe()
		.key("ypshop")
		.rememberMeParameter("remember-me");
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		.userDetailsService(userDetailsService)
		.and()
		.authenticationProvider(authenticationProvider());
	}
	
	@Bean
	public AuthenticationSuccessHandler authenticationSuccessHandler() {
		return new CustomUrlAuthenticationSuccessHandler();
	}
	
	@Bean
	public AuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
		authProvider.setUserDetailsService(userDetailsService);
		authProvider.setPasswordEncoder(customPassworEncoder());
		return authProvider;
	}
	
	//비밀번호 암호화 by BCrypt
	@Bean
	public CustomPasswordEncoder customPassworEncoder() {
		return new CustomPasswordEncoder();
	}
	
}
