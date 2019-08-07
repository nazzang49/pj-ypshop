package com.cafe24.ypshop.frontend.config;

import org.springframework.context.annotation.ComponentScan;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.cafe24.config.web.FileUploadConfig;
import com.cafe24.config.web.MVCConfig;
import com.cafe24.config.web.MessageConfig;

@Configuration
@EnableWebMvc
@EnableAspectJAutoProxy
@ComponentScan({"com.cafe24.ypshop.frontend.controller", "com.cafe24.ypshop.frontend.exception", "com.cafe24.ypshop.frontend.repository"})
@Import({MVCConfig.class, MessageConfig.class, FileUploadConfig.class})
public class WebConfig {
	
}
