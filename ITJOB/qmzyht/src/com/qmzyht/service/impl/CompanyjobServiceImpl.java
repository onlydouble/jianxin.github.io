package com.qmzyht.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qmzyht.pojo.Company;
import com.qmzyht.pojo.Companyjob;
import com.qmzyht.service.CompanyjobService;
import com.qnzyht.dao.CompanyjobDao;

@Service(value = "companyjobService")
public class CompanyjobServiceImpl implements CompanyjobService {
	@Autowired
	private CompanyjobDao companyjobDao;
	
	@Override
	public int deleteCompanyjob(int cjid) {
		return companyjobDao.deleteCompanyjob(cjid);
	}

	@Override
	public List<Companyjob> getCompanyjob(int currentPaging, int pageSize) {
		List<Companyjob> list = companyjobDao.getCompanyjob(currentPaging, pageSize);
		return list;
	}	

	@Override
	public Companyjob getCompanyjobByCjid(int cjid) {
		return companyjobDao.getCompanyjobByCjid(cjid);
	}
	@Override
	public Companyjob getCompanyjobByJob(String name) {
		return companyjobDao.getCompanyjobByName(name);
	}

	@Override
	public int getCompanyjobCount() {
		return companyjobDao.getCompanyjobCount();
	}

	@Override
	public List<Companyjob> getCompanyByCjaddress(String key, int currentPaging,
			int pageSize) {
		List<Companyjob> list = companyjobDao.getCompanyjobByCjaddress(key, currentPaging, pageSize);
		return list;
	}

	@Override
	public int getCompanyByCjaddressCount(String key) {
		// TODO Auto-generated method stub
		return companyjobDao.getCompanyjobByCjaddressCount(key);
	}



}
