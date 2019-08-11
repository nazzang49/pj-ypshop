package com.cafe24.ypshop.frontend.service;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class CustomJsonParse {

	public String getAccessToken(String data){

		String accessToken = "";

		try {

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(data);
			accessToken = jsonObject.get("access_token").toString();
			
		} catch (Exception e) {
			accessToken = null;
	}
		
	return accessToken;
	}
	
	public String getCode(String data){

		String code = "";

		try {

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(data);
			code = jsonObject.get("code").toString();
			
		} catch (Exception e) {
			code = null;
	}
		
	return code;
	}
	
	public String getNaverSearchResult(String data){

		try {

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(data);
			JSONObject code = (JSONObject)jsonObject.get("results");
			
			JSONArray jsonArray = (JSONArray)code.get("data");
			
			System.out.println("들어온다");
			
			for(int i=0;i<jsonArray.size();i++) {
				JSONObject obj = (JSONObject)jsonArray.get(i);
				
				System.out.println("기간 : "+(String)obj.get("period"));
			}
			
			
		} catch (Exception e) {
//			code = null;
	}
		
	return null;
	}
	
}
