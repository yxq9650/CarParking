package com.yxq.carpark.entity;

public class IncomeCharts {
	private int weixin;
	private int zhifubao;
	private int cash;
	public int getWeixin() {
		return weixin;
	}
	public void setWeixin(int weixin) {
		this.weixin = weixin;
	}
	public int getZhifubao() {
		return zhifubao;
	}
	public void setZhifubao(int zhifubao) {
		this.zhifubao = zhifubao;
	}
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}
	@Override
	public String toString() {
		return "IncomeCharts [weixin=" + weixin + ", zhifubao=" + zhifubao + ", cash=" + cash + "]";
	}
	
}
