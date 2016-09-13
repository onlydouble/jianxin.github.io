package com.qnzyht.dao;

import java.util.List;

import com.qmzyht.pojo.Admin;

public interface AdminDao {
	
	public Admin getAdminByName(String name);	//查询用户-根据名字
	
	public int addAdmin(Admin admin);	//添加用户
	
	public int editAdmin(Admin admin);	//更新用户
	
	public int deleteAdmin(int id);	//删除用户
	
	public List<Admin> getAdmin(int currentPaging, int pageSize);	//查找用户-按页

	public int getAdminCount();	//得到所有用户数

	public List<Admin> findAllAdmin();	//得到全部用户

}