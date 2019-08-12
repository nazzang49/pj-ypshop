package com.cafe24.ypshop.backend.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.ypshop.backend.repository.CategoryDAO;
import com.cafe24.ypshop.backend.repository.ImageDAO;
import com.cafe24.ypshop.backend.repository.ProductDAO;
import com.cafe24.ypshop.backend.repository.ProductOptionDAO;
import com.cafe24.ypshop.backend.vo.CategoryVO;
import com.cafe24.ypshop.backend.vo.ImageVO;
import com.cafe24.ypshop.backend.vo.ProductOptionVO;
import com.cafe24.ypshop.backend.vo.ProductVO;

//(회원) 상품 서비스
@Service
public class UserProductService {
	
	@Autowired
	private ProductDAO productDao;
	
	@Autowired
	private ImageDAO imageDao;
	
	@Autowired
	private ProductOptionDAO productOptionDao;
	
	@Autowired
	private CategoryDAO categoryDao;
	
	//상품 목록
	public List<ProductVO> 상품목록(int start, int end, Long categoryNo) {
		return productDao.selectAllByCategoryNoAndAlignUse(start, end, categoryNo);
	}
	
	//카테고리 목록
	public List<CategoryVO> 카테고리목록(){
		return categoryDao.selectAll("", "");
	}
	
	//상품 상세 >> 기본 정보, 이미지, 옵션
	@Transactional
	public Map<String, Object> 상품상세(ProductVO productVO) {
		//기본 정보
		productVO = productDao.selectProductDetailByNo(productVO);
		//상품별 이미지
		List<ImageVO> imageList = imageDao.selectAllImageByProductNo(productVO.getNo());
		//상품별 옵션
		List<ProductOptionVO> productOptionList = productOptionDao.selectAllProductOptionByNo(productVO);
		
		Map<String, Object> map = new HashMap<>();
		map.put("productVO", productVO);
		map.put("imageList", imageList);
		map.put("productOptionList", productOptionList);
		
		return map;
	}
	
}
