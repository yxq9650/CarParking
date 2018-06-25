package com.yxq.carpark.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

 
public class DepotcardManagerData implements Serializable{
	
	private String cardnum;
	
	private String type;
	
	private double money;
	
	private String username;
	
	private String name;
	
	private String time;
	
	private int islose;
	
	private int illegalcount;
	
	private int payid;
	
	private Date deductedtime;
	
	//（0现金，1支付宝，2微信，9从卡中扣费）
	private int alertpayid;
	
	private int alertpay_money;
	
	private int alertpay_type;
	
	public int getAlertpay_money() {
		return alertpay_money;
	}
	public int getAlertpay_type() {
		return alertpay_type;
	}
	public int getAlertpayid() {
		return alertpayid;
	}
	public void setAlertpay_money(int alertpay_money) {
		this.alertpay_money = alertpay_money;
	}
	public void setAlertpay_type(int alertpay_type) {
		this.alertpay_type = alertpay_type;
	}
	public void setAlertpayid(int alertpayid) {
		this.alertpayid = alertpayid;
	}
	public Date getDeductedtime() {
		return deductedtime;
	}
	public void setDeductedtime(Date deductedtime) {
		this.deductedtime = deductedtime;
	}
	
	public int getPayid() {
		return payid;
	}
	public void setPayid(int payid) {
		this.payid = payid;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}

	public String getCardnum() {
		return cardnum;
	}

	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getIslose() {
		return islose;
	}

	public void setIslose(int islose) {
		this.islose = islose;
	}

	public int getIllegalcount() {
		return illegalcount;
	}
	
	public void setIllegalcount(int illegalcount) {
		this.illegalcount = illegalcount;
	}
	
}
