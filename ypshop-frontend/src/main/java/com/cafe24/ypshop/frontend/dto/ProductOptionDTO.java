package com.cafe24.ypshop.frontend.dto;

import java.util.List;

//상품옵션  추가
public class ProductOptionDTO {

	private List<Long> firstOptionNoList;
	private List<Long> secondOptionNoList;
	private List<Long> remainAmountList;
	
	public List<Long> getFirstOptionNoList() {
		return firstOptionNoList;
	}
	public void setFirstOptionNoList(List<Long> firstOptionNoList) {
		this.firstOptionNoList = firstOptionNoList;
	}
	public List<Long> getSecondOptionNoList() {
		return secondOptionNoList;
	}
	public void setSecondOptionNoList(List<Long> secondOptionNoList) {
		this.secondOptionNoList = secondOptionNoList;
	}
	public List<Long> getRemainAmountList() {
		return remainAmountList;
	}
	public void setRemainAmountList(List<Long> remainAmountList) {
		this.remainAmountList = remainAmountList;
	}
	
	@Override
	public String toString() {
		return "ProductOptionDTO [firstOptionNoList=" + firstOptionNoList + ", secondOptionNoList=" + secondOptionNoList
				+ ", remainAmountList=" + remainAmountList + "]";
	}
	
}
