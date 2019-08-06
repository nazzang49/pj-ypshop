package com.cafe24.ypshop.frontend.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Import;
import com.cafe24.config.app.AppSecurityConfig;

@Configuration
@EnableAspectJAutoProxy
@Import({AppSecurityConfig.class})
@ComponentScan({"com.cafe24.ypshop.frontend.repository", "com.cafe24.ypshop.frontend.service", "com.cafe24.ypshop.frontend.security"})
public class AppConfig {
	
}
