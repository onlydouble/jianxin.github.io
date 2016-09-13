package com.service;

import java.util.List;

import com.dao.UserDao;
import com.entity.User;


public class UserService {
	
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	//澧炲姞
	public void addUser(User user){
		userDao.add(user);
		
	}
	//杩斿洖鎵�湁
	public List<User> getUsers(){
		System.out.println("44444444444444444444444444444444444");
		return userDao.getAll();
	}
	//鏍规嵁name鏌ヨ
	public User getUserByName(String name){
		return userDao.getByName(name);
	}
	
}
