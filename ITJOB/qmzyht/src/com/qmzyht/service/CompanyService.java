package com.qmzyht.service;

import java.util.List;

import com.qmzyht.pojo.Company;

public interface CompanyService {
	
	
	

	
	public int editCompany(Company company);
	
	public int deleteCompany(int cid);
	
	public List<Company> getCompany(int currentPaging, int pageSize);
	
	public Company getCompanyByCid(int cid);
	
	public Company getCompanyByCname(String cname);
	
	public List<Company> getCompanyByCaddress(String name, int currentPaging, int pageSize);
	
	public int getCompanyCount();
	
	public int getCompanyByCaddressCount(String name);
		
}