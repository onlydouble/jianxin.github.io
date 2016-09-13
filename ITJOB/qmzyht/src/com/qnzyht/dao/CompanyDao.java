package com.qnzyht.dao;

import java.util.List;

import com.qmzyht.pojo.Company;




public interface CompanyDao {
	
	public Company getCompanyByCid(int cid);	//查询用户-根据id
	
	public Company getCompanyByName(String name);	//查询用户-根据名字
	
	public List<Company> findAllCompany();	//得到全部用户
	
	public List<Company> getCompany(int currentPaging, int pageSize);	//查找用户-按页
	
	public List<Company> getCompanyByCaddress(String name, int currentPaging, int pageSize);	//查找指定公众号名的用户-按页
	
	public int getCompanyCount();	//得到所有用户数
	
	public int getCompanyByCaddressCount(String name);	//得到指定公众号名的用户数
	
	public int addCompany(Company company);	//添加企业用户
	
	public int editCompany(Company company);	//更新企业用户
	
	public int deleteCompany(int cid);	//删除企业用户



	
}