package com.yxq.carpark.entity;

import java.io.Serializable;
import java.util.Date;


public class Email implements Serializable{
	private int id;
	private int sendid;
	private int toid;
	private String title;
	private String content;
	private Date time;
	private int userisread;
	//0:Î´¶Á£¬1:ÒÑ¶Á£¬2:ÒÑ»Ø¸´
	private int managerisread;
	private int userdeleted;
	private int managedelete;
	
	public int getManagedelete() {
		return managedelete;
	}
	public int getUserdeleted() {
		return userdeleted;
	}
	public void setManagedelete(int managedelete) {
		this.managedelete = managedelete;
	}
	public void setUserdeleted(int userdeleted) {
		this.userdeleted = userdeleted;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSendid() {
		return sendid;
	}
	public void setSendid(int sendid) {
		this.sendid = sendid;
	}
	public int getToid() {
		return toid;
	}
	public void setToid(int toid) {
		this.toid = toid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getManagerisread() {
		return managerisread;
	}
	public void setManagerisread(int managerisread) {
		this.managerisread = managerisread;
	}
	public int getUserisread() {
		return userisread;
	}
	public void setUserisread(int userisread) {
		this.userisread = userisread;
	}
	
	

}
