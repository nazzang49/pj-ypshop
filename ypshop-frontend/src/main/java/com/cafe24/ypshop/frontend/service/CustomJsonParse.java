package com.cafe24.ypshop.frontend.service;

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
	
}
