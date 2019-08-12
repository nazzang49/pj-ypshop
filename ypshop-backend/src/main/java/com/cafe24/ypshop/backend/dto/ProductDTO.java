package com.cafe24.ypshop.backend.dto;

import java.util.List;

import com.cafe24.ypshop.backend.vo.CategoryVO;
import com.cafe24.ypshop.backend.vo.PageVO;
import com.cafe24.ypshop.backend.vo.ProductVO;

public class ProductDTO {

	private List<CategoryVO> categoryList;
	private List<ProductVO> productList;
	private PageVO pageVO;
	
	public List<CategoryVO> getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List<CategoryVO> categoryList) {
		this.categoryList = categoryList;
	}
	public List<ProductVO> getProductList() {
		return productList;
	}
	public void setProductList(List<ProductVO> productList) {
		this.productList = productList;
	}
	public PageVO getPageVO() {
		return pageVO;
	}
	public void setPageVO(PageVO pageVO) {
		this.pageVO = pageVO;
	}
	
	@Override
	public String toString() {
		return "ProductDTO [categoryList=" + categoryList + ", productList=" + productList + ", pageVO=" + pageVO + "]";
	}
	
}
