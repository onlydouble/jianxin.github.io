package com.qmzyht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qmzyht.pojo.Company;
import com.qmzyht.service.CompanyService;
import com.qmzyht.util.Util;
import com.qnzyht.dao.CompanyDao;

@Service(value = "companyService")
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyDao companyDao;
	



	@Override
	public int editCompany(Company company) {
		return companyDao.editCompany(company);
	}
	
	@Override
	public int deleteCompany(int cid) {
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		return companyDao.deleteCompany(cid);
	}

	@Override
	public List<Company> getCompany(int currentPaging, int pageSize) {
		List<Company> list = companyDao.getCompany(currentPaging, pageSize);
		return list;
	}

	@Override
	public int getCompanyCount() {
		return companyDao.getCompanyCount();
	}

	@Override
	public Company getCompanyByCid(int cid) {
		System.out.println();
		return companyDao.getCompanyByCid(cid);
	}

	@Override
	public Company getCompanyByCname(String cname) {
		return companyDao.getCompanyByName(cname);
	}

	@Override
	public List<Company> getCompanyByCaddress(String name, int currentPaging, int pageSize) {
		List<Company> list = companyDao.getCompanyByCaddress(name, currentPaging, pageSize);
		return list;
	}

	@Override
	public int getCompanyByCaddressCount(String name) {
		return companyDao.getCompanyByCaddressCount(name);
	}

	
	
}