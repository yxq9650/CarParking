package com.yxq.carpark.entity;

import java.util.List;

public class Result {
	
	private int status;
	
	private List<String> response;
	
	private String date;

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}


	public List<String> getResponse() {
		return response;
	}

	public void setResponse(List<String> response) {
		this.response = response;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}


	public Result(int status, List<String> response, String date) {
		this.status = status;
		this.response = response;
		this.date = date;
	}

	@Override
	public String toString() {
		return "Result {status=" + status + ", response=" + response + ", date=" + date + "}";
	}
	

}
