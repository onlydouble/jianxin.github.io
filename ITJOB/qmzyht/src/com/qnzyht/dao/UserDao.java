package com.qnzyht.dao;

import java.util.List;

import com.qmzyht.pojo.User;

public interface UserDao {
	
	public User getUserById(int id);	//查询用户-根据id
	
	public User getUserByName(String name);	//查询用户-根据名字
	
	public List<User> findAllUser();	//得到全部用户
	
	public List<User> getUser(int currentPaging, int pageSize);	//查找用户-按页
	
	public List<User> getUserByPublicname(String name, int currentPaging, int pageSize);	//查找指定公众号名的用户-按页
	
	public int getUserCount();	//得到所有用户数
	
	public int getUserByPublicnameCount(String name);	//得到指定公众号名的用户数
	
	public int addUser(User user);	//添加企业用户
	
	public int editUser(User user);	//更新企业用户
	
	public int deleteUser(int id);	//删除企业用户
	
}