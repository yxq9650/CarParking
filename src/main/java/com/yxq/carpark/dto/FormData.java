package com.yxq.carpark.dto;

import java.util.Date;


public class FormData {
	//停车位表ID
	private int id;
	//停车位号
	private int parkNum;
	//卡号
	private String cardNum;
	//停车卡号
	private String carNum;
	//是否临时停车
	private int parkTem;
	//停入时间
	private Date parkin;
	//出库时间
	private Date parkout;
	//车位类型
	private Integer tag;
	//违规信息
	private String illegalInfo;
	//支付方式（支付宝，微信，现金,从卡中扣钱）
	private int payid;
	//支付金额
	private int pay_money;
	//年卡月卡是否到期
	private int pay_type;
	
	public int getPayid() {
		return payid;
	}
	public void setPayid(int payid) {
		this.payid = payid;
	}
	public int getPay_money() {
		return pay_money;
	}
	public void setPay_money(int pay_money) {
		this.pay_money = pay_money;
	}
	public int getPay_type() {
		return pay_type;
	}
	public void setPay_type(int pay_type) {
		this.pay_type = pay_type;
	}
	public String getIllegalInfo() {
		return illegalInfo;
	}
	public void setIllegalInfo(String illegalInfo) {
		this.illegalInfo = illegalInfo;
	}
	public Integer getTag() {
		return tag;
	}
	public void setTag(Integer tag) {
		this.tag = tag;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getParkNum() {
		return parkNum;
	}
	public void setParkNum(int parkNum) {
		this.parkNum = parkNum;
	}
	public Date getParkout() {
		return parkout;
	}
	public void setParkout(Date parkout) {
		this.parkout = parkout;
	}
	public Date getParkin() {
		return parkin;
	}
	public void setParkin(Date parkin) {
		this.parkin = parkin;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public int getParkTem() {
		return parkTem;
	}
	public void setParkTem(int parkTem) {
		this.parkTem = parkTem;
	}
	@Override
	public String toString() {
		return "FormData [id=" + id + ", parkNum=" + parkNum + ", cardNum=" + cardNum + ", carNum=" + carNum
				+ ", parkTem=" + parkTem + ", parkin=" + parkin + ", parkout=" + parkout + ", tag=" + tag + "]";
	}
	
	
}
