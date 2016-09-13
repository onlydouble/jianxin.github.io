package com.entity;

import java.util.Date;

public class User {
	private Integer id;
	private String name;
	private String password;
	private Integer age;
	private String sex;
	private Date birth;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User( String name, String password, Integer age,
			String sex, Date birth) {
		super();
		
		this.name = name;
		this.password = password;
		this.age = age;
		this.sex = sex;
		this.birth = birth;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password
				+ ", age=" + age + ", sex=" + sex + ", birth=" + birth + "]";
	}
	
	
	
}
