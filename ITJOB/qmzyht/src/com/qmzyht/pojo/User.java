package com.qmzyht.pojo;

import java.util.Date;

public class User {
	
	public static final int USER_STATE_DISABLE = 0;	//禁用
	public static final int USER_STATE_ENABLE = 1;	//可用
	
	private int id;
	private String username;
	private String password;
	private String email;
	private String publicname;
	private String content;
	private String img;
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
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPublicname() {
		return publicname;
	}
	
	public void setPublicname(String publicname) {
		this.publicname = publicname;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
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