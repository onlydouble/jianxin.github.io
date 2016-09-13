package com.qmzyht.service;

import java.util.List;

import com.qmzyht.pojo.Admin;

public interface AdminService {
	
	public Admin login(String name, String password);
	
	public int addAdmin(Admin admin);
	
	public int editAdmin(Admin admin);

	public int deleteAdmin(int id);
	
	public List<Admin> getAdmin(int currentPaging, int pageSize);
	
	public int getAdminCount();

	public Admin getAdminByUsername(String name);

}