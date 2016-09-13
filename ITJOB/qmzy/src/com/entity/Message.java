package com.entity;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;



public class Message {

	private int id;
	private String meno;
	private String memail;
	private String mecontent;
	private String mphone;
	private Date medate;
	   private String mimg;
	
	public int getId() {
		return id;
	}
	public Message() {
		super();
	}


	@Override
	public String toString() {
		return "Message [id=" + id + ", meno=" + meno + ", memail=" + memail
				+ ", mecontent=" + mecontent + ", mphone=" + mphone
				+ ", medate=" + medate + "]";
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMecontent() {
		return mecontent;
	}
	public void setMecontent(String mecontent) {
		this.mecontent = mecontent;
	}

	public Message(int id, String meno, String memail, String mecontent,
			String mphone, Date medate) {
		super();
		this.id = id;
		this.meno = meno;
		this.memail = memail;
		this.mecontent = mecontent;
		this.mphone = mphone;
		this.medate = medate;
	}
	@SuppressWarnings("unused")
	public Date getMedate() {
		if(medate == null){
			Date date=new Date();
		//	DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//	String time=format.format(date); 
			return date;
		} else{
		return medate;
		}
	}
	public void setMedate(Date medate) {
		this.medate = medate;
	}
	
	public String getMeno() {
		return meno;
	}
	public void setMeno(String meno) {
		this.meno = meno;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMimg() {
		if(this.mimg == null){
		return "images/7.jpg";
	}else {
		return mimg;
	}
		}
	public void setMimg(String mimg) {
		this.mimg = mimg;
	}
}
