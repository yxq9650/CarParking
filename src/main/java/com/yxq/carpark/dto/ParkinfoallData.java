package com.yxq.carpark.dto;

import java.io.Serializable;
import java.util.Date;


public class ParkinfoallData implements Serializable{
	private int id;
	private String cardnum;
	private String parknum;
	private String carnum;
	private String parkin;
	private String parkout;
	private int parktemp;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCardnum() {
		return cardnum;
	}
	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}
	public String getParknum() {
		return parknum;
	}
	public void setParknum(String parknum) {
		this.parknum = parknum;
	}
	public String getCarnum() {
		return carnum;
	}
	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}
	public String getParkin() {
		return parkin;
	}
	public void setParkin(String parkin) {
		this.parkin = parkin;
	}
	public String getParkout() {
		return parkout;
	}
	public void setParkout(String parkout) {
		this.parkout = parkout;
	}
	public int getParktemp() {
		return parktemp;
	}
	public void setParktemp(int parktemp) {
		this.parktemp = parktemp;
	}
	
	
}
