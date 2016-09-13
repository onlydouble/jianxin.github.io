package com.qmzyht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qmzyht.pojo.Admin;
import com.qmzyht.service.AdminService;
import com.qmzyht.util.Util;
import com.qnzyht.dao.AdminDao;

@Service(value = "adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public Admin login(String name, String password) {
		Admin admin = adminDao.getAdminByName(name);
		if (admin != null) {
			String pa = Util.MD5(admin.getPassword());
			if ((password.equals(pa)) && (admin.getState() == Admin.ADMIN_STATE_ENABLE)) {
				return admin;
			}
		}
		return null;
	}

	@Override
	public List<Admin> getAdmin(int currentPaging, int pageSize) {
		List<Admin> list = adminDao.getAdmin(currentPaging, pageSize);
		return list;
	}

	@Override
	public int getAdminCount() {
		return adminDao.getAdminCount();
	}

	@Override
	public Admin getAdminByUsername(String name) {
		Admin admin = adminDao.getAdminByName(name);
		return admin;
	}

	@Override
	public int addAdmin(Admin admin) {
		return adminDao.addAdmin(admin);
	}

	@Override
	public int editAdmin(Admin admin) {
		return adminDao.editAdmin(admin);
	}

	@Override
	public int deleteAdmin(int id) {
		return adminDao.deleteAdmin(id);
	}
	
}