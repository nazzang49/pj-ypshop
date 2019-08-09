package com.cafe24.ypshop.backend.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class SolapiSMS {
	
	public static void main(String[] args) throws Exception {
		
		String targetUrl = "http://api.solapi.com/messages/v4/send";
		String parameters = "{\"message\":{\"to\":\"01094414951\",\"from\":\"01094414951\",\"text\":\"hello world\"}}";

		URL url = new URL(targetUrl);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();

		con.setRequestMethod("POST");

		con.setRequestProperty("Authorization", "Bearer eyJhbGciOiJI...");
		con.setRequestProperty("Content-Type", "application/json");

		con.setDoOutput(true);
		DataOutputStream wr = new DataOutputStream(con.getOutputStream());
		wr.writeBytes(parameters);
		wr.flush();
		wr.close();

		int responseCode = con.getResponseCode();
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String line;
		StringBuffer response = new StringBuffer();
		while ((line = in.readLine()) != null) {
			response.append(line);
		}
		in.close();

		System.out.println("HTTP response code : " + responseCode);
		System.out.println("HTTP body : " + response.toString());
	}
}
