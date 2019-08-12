package com.cafe24.ypshop.backend.dto;

import java.util.List;

//주문 상태 수정용 DTO
public class OrderDTO {

	private List<Long> orderNoList;
	private String status;
	
	public List<Long> getOrderNoList() {
		return orderNoList;
	}
	public void setOrderNoList(List<Long> orderNoList) {
		this.orderNoList = orderNoList;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "OrderDTO [orderNoList=" + orderNoList + ", status=" + status + "]";
	}
	
}
