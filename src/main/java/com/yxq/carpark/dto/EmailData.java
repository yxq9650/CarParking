package com.yxq.carpark.dto;

import java.util.Date;


public class EmailData {
	private String sendUsername;
	private String toUsername;
	private int id;
	private int sendid;
	private int toid;
	private String title;
	private String content;
	private String time;
	private int userisread;
	private int managerisread;
	private int userdeleted;
	private int managedelete;
	private int isSend;
	private int isRead;
	

	public int getIsRead() {
		return isRead;
	}
	public void setIsRead(int isRead) {
		this.isRead = isRead;
	}
	public int getIsSend() {
		return isSend;
	}
	public void setIsSend(int isSend) {
		this.isSend = isSend;
	}
	public String getSendUsername() {
		return sendUsername;
	}
	public void setSendUsername(String sendUsername) {
		this.sendUsername = sendUsername;
	}
	public String getToUsername() {
		return toUsername;
	}
	public void setToUsername(String toUsername) {
		this.toUsername = toUsername;
	}
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
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
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
