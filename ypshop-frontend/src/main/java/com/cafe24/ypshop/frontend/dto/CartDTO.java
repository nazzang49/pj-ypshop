package com.cafe24.ypshop.frontend.dto;

import java.util.List;

public class CartDTO {

	private List<Long> cartNoList;

	public List<Long> getCartNoList() {
		return cartNoList;
	}
	public void setCartNoList(List<Long> cartNoList) {
		this.cartNoList = cartNoList;
	}

	@Override
	public String toString() {
		return "CartDTO [cartNoList=" + cartNoList + "]";
	}
	
}
