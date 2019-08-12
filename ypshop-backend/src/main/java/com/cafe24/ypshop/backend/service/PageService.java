package com.cafe24.ypshop.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.ypshop.backend.repository.ProductDAO;
import com.cafe24.ypshop.backend.vo.PageVO;

@Service
public class PageService {

	//한 페이지에 표시할 게시물 수
	private final int PAGE_SIZE = 3;
	
	@Autowired
	private ProductDAO productDao;
	
	//게시물 수, 페이지 번호
	public PageVO getPaging(int pageNum) {
		
		PageVO pageVO = new PageVO();
		
		int currentPage = pageNum;
		
		//한 페이지에 10개의 게시물 표시
		int pageBlock = 3;
		
		//한 페이지의 시작행, 끝행
		int startRow = (currentPage-1)*PAGE_SIZE+1;
		
		//총 게시물 수 >> 추후, 검색 기능 적용 시 수정
		int count = productDao.getCountByAlignUse();
		int pageCount = count/PAGE_SIZE+(count%PAGE_SIZE==0? 0:1);
		int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		
		if(endPage>pageCount) {
			endPage=pageCount;
		}
		
		pageVO.setCount(count);
		pageVO.setStartRow(startRow);
		pageVO.setPageCount(pageCount);
		pageVO.setStartPage(startPage);
		pageVO.setEndPage(endPage);
		pageVO.setCurrentPage(currentPage);
		pageVO.setPageBlock(pageBlock);
		pageVO.setPageSize(PAGE_SIZE);
		
		return pageVO;
	}
	
}
