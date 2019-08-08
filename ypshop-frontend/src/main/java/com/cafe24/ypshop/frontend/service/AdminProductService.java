package com.cafe24.ypshop.frontend.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

import org.springframework.http.HttpEntity;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.cafe24.ypshop.frontend.dto.JSONResult;
import com.cafe24.ypshop.frontend.dto.ProductOptionDTO;
import com.cafe24.ypshop.frontend.vo.CategoryVO;
import com.cafe24.ypshop.frontend.vo.MemberVO;
import com.cafe24.ypshop.frontend.vo.OptionVO;
import com.cafe24.ypshop.frontend.vo.ProductVO;

@Service
public class AdminProductService {

	private static final String SAVE_PATH = "/mysite-uploads";
	private static final String URL = "/images";
	private final RestTemplate restTemplate = new RestTemplate();
	
	//관리자_상품 목록
	public List<ProductVO> productList() {
		JSONResultProductList result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/admin/product/list", JSONResultProductList.class);		
		return result.getData();
	}
	
	//관리자_상품 추가_페이지_카테고리 목록
	public List<CategoryVO> categoryList() {
		JSONResultCategoryList result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/admin/category/list", JSONResultCategoryList.class);		
		return result.getData();
	}
	
	//관리자_상품 추가
	public Long add(ProductVO productVO) {
		restTemplate.setMessageConverters(Arrays.asList(new MappingJackson2HttpMessageConverter()));
		JSONResultGoods result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/admin/product/add", productVO, JSONResultGoods.class);		
		return result.getData();
	}
	
	//관리자_상품옵션 추가_페이지_옵션 목록
	public List<OptionVO> optionList(Long productNo) {
		JSONResultOptionList result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/admin/product/"+productNo+"/option/list", JSONResultOptionList.class);		
		return result.getData();
	}
	
	//관리자_상품옵션_중복체크
	public Boolean checkExist(Long firstOptionNo, Long secondOptionNo) {
		JSONResultCheckExist result = restTemplate.getForObject("http://localhost:8090/ypshop-backend/api/admin/product/productOption/checkExist?firstOptionNo="+firstOptionNo+"&secondOptionNo="+secondOptionNo,
																JSONResultCheckExist.class);
		return result.getData();
	}
	
	//관리자_상품옵션_추가
	public Boolean productOptionAdd(List<Long> firstOptionNoList, List<Long> secondOptionNoList, List<Long> remainAmountList, Long productNo) {
		restTemplate.setMessageConverters(Arrays.asList(new MappingJackson2HttpMessageConverter()));
		
		ProductOptionDTO productOptionDTO = new ProductOptionDTO();
		productOptionDTO.setFirstOptionNoList(firstOptionNoList);
		productOptionDTO.setSecondOptionNoList(secondOptionNoList);
		productOptionDTO.setRemainAmountList(remainAmountList);
		
//		MultiValueMap<String, List<Long>> parameters = new LinkedMultiValueMap<>();
//		parameters.add("firstOptionNoList", firstOptionNoList);
//		parameters.add("secondOptionNoList", secondOptionNoList);
//		parameters.add("remainAmountList", remainAmountList);
		
		JSONResultProductOptionAdd result = restTemplate.postForObject("http://localhost:8090/ypshop-backend/api/admin/product/"+productNo+"/productOption/add", productOptionDTO, JSONResultProductOptionAdd.class);		
		return result.getData();
	}
	
	private static class JSONResultGoods extends JSONResult<Long> {
	}
	
	private static class JSONResultCheckExist extends JSONResult<Boolean> {
	}
	
	private static class JSONResultProductOptionAdd extends JSONResult<Boolean> {
	}
	
	private static class JSONResultProductList extends JSONResult<List<ProductVO>> {
	}
	
	private static class JSONResultCategoryList extends JSONResult<List<CategoryVO>> {
	}
	
	private static class JSONResultOptionList extends JSONResult<List<OptionVO>> {
	}
	
	public String restore(MultipartFile multipartFile) {
		String url = "";

		try {
		
			if(multipartFile.isEmpty()) {
				return url;
			}
			
			String originalFilename = 
					multipartFile.getOriginalFilename();
			String extName = originalFilename.substring(originalFilename.lastIndexOf('.')+1);
			String saveFileName = generateSaveFileName(extName);
			long fileSize = multipartFile.getSize();
			
			System.out.println("##########" + originalFilename);
			System.out.println("##########" + extName);
			System.out.println("##########" + saveFileName);
			System.out.println("##########" + fileSize);
			
			byte[] fileData = multipartFile.getBytes();
			OutputStream os = new FileOutputStream(SAVE_PATH + "/" + saveFileName);
			os.write(fileData);
			os.close();
			
			url = URL + "/" + saveFileName;
			
		} catch (IOException e) {
			throw new RuntimeException("Fileupload error:" + e);
		}
		
		return url;
	}
	
	private String generateSaveFileName(String extName) {
		String filename = "";
		Calendar calendar = Calendar.getInstance();
		
		filename += calendar.get(Calendar.YEAR);
		filename += calendar.get(Calendar.MONTH);
		filename += calendar.get(Calendar.DATE);
		filename += calendar.get(Calendar.HOUR);
		filename += calendar.get(Calendar.MINUTE);
		filename += calendar.get(Calendar.SECOND);
		filename += calendar.get(Calendar.MILLISECOND);
		filename += ("." + extName);
		
		return filename;
	}
	
}
