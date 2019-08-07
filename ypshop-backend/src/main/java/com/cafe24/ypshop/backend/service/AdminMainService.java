package com.cafe24.ypshop.backend.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.ypshop.backend.repository.MemberDAO;
import com.cafe24.ypshop.backend.repository.ProductDAO;

@Service
public class AdminMainService {

	@Autowired
	private ProductDAO productDao;
	
	@Autowired
	private MemberDAO memberDao;
	
	public Map<String, Long> 상품_회원_카운트(){
		
		Long productCount = productDao.getCount();
		Long memberCount = memberDao.getCount();
		
		Map<String, Long> map = new HashMap<>();
		map.put("productCount", productCount);
		map.put("memberCount", memberCount);
		
		return map;
	}
	
}
