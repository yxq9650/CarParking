package com.yxq.carpark.entity;

import java.io.Serializable;
import java.util.Date;


public class Depotcard implements Serializable{
	//停车场卡信息表
	private int id;
	//卡号
	private String cardnum;
	//卡类型
	private int type;
	//余额
	private double money;
	//发卡时间
	private Date time;
	//是否挂失
	private int islose;
	//违规次数
	private int illegalcount;
	//扣费时间
	private Date deductedtime;
	
	public Date getDeductedtime() {
		return deductedtime;
	}
	public void setDeductedtime(Date deductedtime) {
		this.deductedtime = deductedtime;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
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
