package com.cafe24.ypshop.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.ypshop.backend.repository.ProductOptionDAO;
import com.cafe24.ypshop.backend.vo.ProductOptionVO;

//(관리자) 상품옵션 서비스
@Service
public class AdminProductOptionService {

	@Autowired
	private ProductOptionDAO productOptionDao;
	
	//상품옵션_중복체크
	public boolean 상품옵션중복체크(Long firstOptionNo, Long secondOptionNo) {
		ProductOptionVO productOptionVO = productOptionDao.checkExist(firstOptionNo, secondOptionNo);
		if(productOptionVO!=null) {
			return true;
		}
		return false;
	}
	
	//번호가 0이면 null로 변경
	@Transactional
	public boolean 상품옵션추가(List<Long> firstOptionNoList,
							 List<Long> secondOptionNoList,
							 List<Long> remainAmountList,
							 Long productNo) {
		
		boolean flag = true;
		
		for(int i=0;i<firstOptionNoList.size();i++) {
			
			Long firstOptionNo = firstOptionNoList.get(i);
			Long secondOptionNo = secondOptionNoList.get(i);
			
			if(firstOptionNo==0L) firstOptionNo=null;
			if(secondOptionNo==0L) secondOptionNo=null;
			
			flag = productOptionDao.insertProductOption(new ProductOptionVO(productNo,
																	 firstOptionNo,
																	 secondOptionNo,
																	 remainAmountList.get(i),
																	 remainAmountList.get(i)));
		}
		return flag;
	}
	
	public boolean 상품옵션삭제(List<Long> firstOptionNoList) {
		boolean flag = true;
		
		for(Long no : firstOptionNoList) {
			System.out.println("상품 옵션 번호 : "+no);
			flag = productOptionDao.deleteProductOption(no);
		}
		return flag;
	}
}
