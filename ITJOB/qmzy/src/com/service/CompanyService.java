package com.service;

import java.util.List;

import com.dao.CompanyDao;
import com.entity.Company;
import com.entity.Companyjob;




public class CompanyService {

	private CompanyDao companyDao;
	
	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
		
	}
	//增加用户

	public void addUser(Company company) {
		// TODO Auto-generated method stub
		companyDao.add(company);
	}
	//添加职位
	

		////
	public List<Company> getUsers(){
			return companyDao.getAll();
		}

	public Company getCompanyByName(String cname) {
			// TODO Auto-generated method stub
		
			return companyDao.getByName(cname);
		}


	public List<Company> getCompany(int currentPaging, int pageSize) {
		// TODO Auto-generated method stub
		return  companyDao.getCompany(currentPaging, pageSize);
	}

	public int getCompanyCount() {
		// TODO Auto-generated method stub
		return companyDao.getCompanyCount();
	}

	public List<Company> getCompanyBycname(String cname, int currentPage,
			int pageSize) {
		// TODO Auto-generated method stub
		List<Company> list = companyDao.getCompanyBycname(cname, currentPage, pageSize);
		return list;
		
}
public int getCompanyBycnameCount(String cname) {
		return companyDao.getCompanyBycnameCount(cname);
	}

public List<Company> getCompanyByCaddress(String caddress, int currentPaging,
		int pageSize) {
	System.out.println("caddress");
	List<Company> list = companyDao.getCompanyBycaddress(caddress, currentPaging, pageSize);
	System.out.println("caddress" + caddress);
	return list;
}

public int getCompanyByCaddressCount(String caddress) {
	// TODO Auto-generated method stub
	return companyDao.getCompanyBycaddressCount(caddress);
}
}