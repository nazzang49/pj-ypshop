package com.cafe24.ypshop.backend.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.ypshop.backend.repository.MemberDAO;
import com.cafe24.ypshop.backend.repository.OrderDAO;
import com.cafe24.ypshop.backend.repository.ProductDAO;

@Service
public class AdminMainService {

	@Autowired
	private ProductDAO productDao;
	
	@Autowired
	private MemberDAO memberDao;
	
	@Autowired
	private OrderDAO orderDao;
	
	public Map<String, Long> 상품_회원_주문_카운트(){
		
		long productCount = productDao.getCount();
		long memberCount = memberDao.getCount();
		long orderCount = orderDao.getCount();
		
		Map<String, Long> map = new HashMap<>();
		map.put("productCount", productCount);
		map.put("memberCount", memberCount);
		map.put("orderCount", orderCount);
		
		return map;
	}
	
}
