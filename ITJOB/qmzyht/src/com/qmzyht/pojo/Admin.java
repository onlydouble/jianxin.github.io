package com.qmzyht.pojo;

import java.util.Date;


public class Admin {	
	
	public static final int ADMIN_STATE_DISABLE = 0;	//禁用
	public static final int ADMIN_STATE_ENABLE = 1;	//可用
	
	private int id;
	private String username;
	private String password;
	private int state;
	private Date regdate;

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

}