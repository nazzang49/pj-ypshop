package com.cafe24.ypshop.frontend.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cafe24.ypshop.frontend.security.AuthUser;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.UserOrderService;
import com.cafe24.ypshop.frontend.service.UserProductService;
import com.cafe24.ypshop.frontend.vo.CartVO;
import com.cafe24.ypshop.frontend.vo.ImageVO;
import com.cafe24.ypshop.frontend.vo.OptionVO;
import com.cafe24.ypshop.frontend.vo.OrderDetailVO;
import com.cafe24.ypshop.frontend.vo.OrderVO;
import com.cafe24.ypshop.frontend.vo.ProductOptionVO;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Controller
@RequestMapping("/member/order")
public class UserOrderController {

	@Autowired
	private UserOrderService userOrderService;
	
	//주문_상세
	@GetMapping("/list")
	public String list(@AuthenticationPrincipal SecurityUser securityUser,
					   @RequestParam(value="period", required=true, defaultValue="-3") int period,
					   Model model) {
		
		//로그인 아이디, 조회 기간
		Map<String, Object> map = userOrderService.orderList(securityUser.getUsername(), period);
		
		List<OrderVO> orderList = (List<OrderVO>)map.get("orderList");
		List<OrderDetailVO> orderDetailList = (List<OrderDetailVO>)map.get("orderDetailList");
		
		String jsonArrayString = JSONArray.toJSONString(orderDetailList);
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("jsonArrayString", jsonArrayString);
		
		return "member/mypage-orderList";
	}
	
	//회원_주문_페이지 >> 선택 장바구니 번호 리스트 추출
	@GetMapping("/orderform")
	public String orderPage(@RequestParam(value="noList", required=true, defaultValue="0") List<Long> cartNoList, 
							Model model) {
		
		//xml 파일에서 forEach 구문 적용
		List<CartVO> cartList = userOrderService.cartList(cartNoList);
		
		Long paymentPrice = 0L;
		
		for(CartVO cartVO : cartList) {
			paymentPrice+=(cartVO.getCartAmount()*cartVO.getCartPrice());
		}
		
		model.addAttribute("cartList", cartList);
		model.addAttribute("paymentPrice", paymentPrice);
		
		return "member/mypage-orderform";
	}
	
	//회원_주문
	@PostMapping("/add")
	public String addOrder(@AuthenticationPrincipal SecurityUser securityUser,
			  			   @RequestParam(value="customerName", required=true, defaultValue="") String customerName,
			  			   @RequestParam(value="customerAddress", required=true, defaultValue="") String customerAddress,
			  			   @RequestParam(value="customerPhone", required=true, defaultValue="") String customerPhone,
			  			   @RequestParam(value="customerEmail", required=true, defaultValue="") String customerEmail,
			  			   @RequestParam(value="receiverName", required=true, defaultValue="") String receiverName,
			  			   @RequestParam(value="receiverAddress", required=true, defaultValue="") String receiverAddress,
			  			   @RequestParam(value="receiverPhone", required=true, defaultValue="") String receiverPhone,
			  			   @RequestParam(value="receiverMsg", required=true, defaultValue="") String receiverMsg,
			  			   @RequestParam(value="paymentCategory", required=true, defaultValue="0") String paymentCategory,
			  			   @RequestParam(value="paymentPrice", required=true, defaultValue="") Long paymentPrice,
			  			   @RequestParam(value="cartNo", required=true, defaultValue="0") List<Long> cartNoList,
			  			   Model model) {
		
		//주문 VO 객체에 담아 전송
		OrderVO orderVO  =new OrderVO();
		orderVO.setMemberId(securityUser.getUsername());
		orderVO.setCartNoList(cartNoList);
		orderVO.setCustomerName(customerName);
		orderVO.setCustomerPhone(customerPhone);
		orderVO.setCustomerEmail(customerEmail);
		orderVO.setCustomerAddress(customerAddress);
		orderVO.setReceiverName(receiverName);
		orderVO.setReceiverPhone(receiverPhone);
		orderVO.setReceiverAddress(receiverAddress);
		orderVO.setReceiverMsg(receiverMsg);
		orderVO.setPaymentPrice(paymentPrice);
		orderVO.setPaymentCategory(paymentCategory);
		
		String returnMsg = userOrderService.addOrder(orderVO);
		
		model.addAttribute("returnMsg", returnMsg);
		
		return "member/order-success";
	}
	
}
