package com.cafe24.ypshop.frontend.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cafe24.ypshop.frontend.security.AuthUser;
import com.cafe24.ypshop.frontend.security.SecurityUser;
import com.cafe24.ypshop.frontend.service.AdminProductService;
import com.cafe24.ypshop.frontend.vo.CategoryVO;
import com.cafe24.ypshop.frontend.vo.ImageVO;
import com.cafe24.ypshop.frontend.vo.OptionVO;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Controller
@RequestMapping("/admin")
public class AdminProductController {
	
	@Autowired
	private AdminProductService adminProductService;
	
	//관리자_상품관리
	@GetMapping("/product")
	public String productList(@AuthUser SecurityUser securityUser, Model model) {
		List<ProductVO> productList = adminProductService.productList();
		
		System.out.println("상품 리스트 사이즈 : "+productList.size());
		
		model.addAttribute("productList", productList);
		
		return "admin/admin-product";
	}
	
	//관리자_상품추가_페이지
	@GetMapping("/product/add")
	public String add(@AuthUser SecurityUser securityUser, Model model) {
		
		//카테고리 목록
		List<CategoryVO> categoryList = adminProductService.categoryList();
		
		System.out.println("카테고리 리스트 사이즈 : "+categoryList.size());
		
		model.addAttribute("categoryList", categoryList);
		
		return "admin/admin-product-add";
	}
	
	//관리자_상품추가
	@PostMapping("/product/add")
	public String add(@AuthUser SecurityUser securityUser,
					  @RequestParam(value="name", required=true, defaultValue="") String name,
					  @RequestParam(value="price", required=true, defaultValue="0") Long price,
					  @RequestParam(value="shortDescription", required=true, defaultValue="") String shortDescription,
					  @RequestParam(value="image") List<MultipartFile> imageList,
					  @RequestParam(value="thumbnailUrl") MultipartFile thumbnailUrl,
					  @RequestParam(value="categoryNo", required=true, defaultValue="") Long categoryNo,
					  @RequestParam(value="depth", required=true, defaultValue="") List<Long> depthList,
					  @RequestParam(value="option", required=true, defaultValue="") List<String> optionList,
					  @RequestParam(value="alignUse", required=true, defaultValue="Y") String alignUse,
					  Model model) {
		
		
		//상품 VO 객체에 담아 전송
		ProductVO productVO = new ProductVO();
		
		//기본 이미지 1개 이상
		List<ImageVO> imageVoList = new ArrayList<>();
		for(MultipartFile mp : imageList) {
			String url = adminProductService.restore(mp);
			imageVoList.add(new ImageVO(null, url, "B"));
		}
		
		//대표 이미지 1개
		String thumbnail = adminProductService.restore(thumbnailUrl);
		imageVoList.add(new ImageVO(null, thumbnail, "R"));
		
		//옵션 1개 이상
		List<OptionVO> optionVoList = new ArrayList<>();
		for(int i=0; i<depthList.size(); i++) {
			optionVoList.add(new OptionVO(null, optionList.get(i), depthList.get(i)));
		}
		
		productVO.setCategoryNo(categoryNo);
		productVO.setAlignUse(alignUse);
		productVO.setPrice(price);
		productVO.setImageList(imageVoList);
		productVO.setOptionList(optionVoList);
		productVO.setName(name);
		productVO.setShortDescription(shortDescription);
		
		boolean flag = adminProductService.add(productVO);
		
		if(!flag) {
			model.addAttribute("flag", false);
		}
		
		model.addAttribute("flag", true);
		
		return "admin/admin-product-add-success";
	}
	
	//관리자_상품옵션추가_페이지
	@GetMapping("/{productNo}/productOption/add")
	public String productOptionAdd(@AuthUser SecurityUser securityUser, Model model) {
		
		//현재 상품의 상품 옵션
		List<CategoryVO> categoryList = adminProductService.categoryList();
		
		System.out.println("카테고리 리스트 사이즈 : "+categoryList.size());
		
		model.addAttribute("categoryList", categoryList);
		
		return "admin/admin-product-add";
	}
}
