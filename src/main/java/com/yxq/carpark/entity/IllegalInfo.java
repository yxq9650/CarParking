package com.yxq.carpark.entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;


public class IllegalInfo implements Serializable{

	private int id;
	private String cardnum;
	private String carnum;
	private String illegalInfo;
	private Date time;
	private String formatDate;
	private int uid;
	private String username;
	private String deleted;
	private Date parkin;
	
	public Date getParkin() {
		return parkin;
	}
	public void setParkin(Date parkin) {
		this.parkin = parkin;
	}
	public String getDelete() {
		return deleted;
	}
	public void setDelete(String delete) {
		this.deleted = delete;
	}
	public String getFormatDate() {
		return formatDate;
	}
	public void setFormatDate(String formatDate) {
		this.formatDate = formatDate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getCarnum() {
		return carnum;
	}
	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}
	public String getIllegalInfo() {
		return illegalInfo;
	}
	public void setIllegalInfo(String illegalInfo) {
		this.illegalInfo = illegalInfo;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String formatDate=formatter.format(time);
		this.setFormatDate(formatDate);
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	
}
