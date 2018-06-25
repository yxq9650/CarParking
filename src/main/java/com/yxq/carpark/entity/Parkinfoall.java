package com.yxq.carpark.entity;

import java.io.Serializable;
import java.util.Date;

public class Parkinfoall implements Serializable{
	private int id;
	private String cardnum;
	private int parknum;
	private String carnum;
	private Date parkin;
	private Date parkout;
	private int parktemp;
	private int uid;
	
	public int getUid() {
		return uid;
	}
	
	public void setUid(int uid) {
		this.uid = uid;
	}
	
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
	public int getParknum() {
		return parknum;
	}
	public void setParknum(int i) {
		this.parknum = i;
	}
	public String getCarnum() {
		return carnum;
	}
	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}
	public Date getParkin() {
		return parkin;
	}
	public void setParkin(Date parkin) {
		this.parkin = parkin;
	}
	public Date getParkout() {
		return parkout;
	}
	public void setParkout(Date parkout) {
		this.parkout = parkout;
	}
	public int getParktemp() {
		return parktemp;
	}
	public void setParktemp(int parktemp) {
		this.parktemp = parktemp;
	}
	
	
}
