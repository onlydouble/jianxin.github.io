package com.qmzyht.service;

import java.util.List;

import com.qmzyht.pojo.Companyjob;


public interface CompanyjobService {

	public int deleteCompanyjob(int cjid);
	
	public List<Companyjob> getCompanyjob(int currentPaging, int pageSize);
	public Companyjob getCompanyjobByCjid(int cjid);
	public Companyjob getCompanyjobByJob(String name);
	public int getCompanyjobCount();

	public List<Companyjob> getCompanyByCjaddress(String key, int currentPage,
			int pageSize);

	public int getCompanyByCjaddressCount(String key);

	}
