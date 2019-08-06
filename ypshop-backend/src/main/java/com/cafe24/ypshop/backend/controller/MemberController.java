package com.cafe24.ypshop.backend.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe24.ypshop.backend.dto.JSONResult;

@Controller
public class MemberController {

	@RequestMapping("/main")
	public ResponseEntity<JSONResult> main() {
		return ResponseEntity
				.status(HttpStatus.OK)
				.body(JSONResult.success("Test"));
	}
}
