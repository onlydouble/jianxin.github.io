package com.qnzyht.dao;

import java.util.List;

import com.qmzyht.pojo.Companyjob;


public interface CompanyjobDao {

public Companyjob getCompanyjobByCjid(int cjid);	//查询用户-根据id
	
	public Companyjob getCompanyjobByName(String name);	//查询用户-根据名字
	
	public List<Companyjob> findAllCompanyjob();	//得到全部用户

	public List<Companyjob> getCompanyjob(int currentPaging, int pageSize);	//查找用户-按页
	public int deleteCompanyjob(int cjid);	//删除企业用户

	public int getCompanyjobCount();


	public int getCompanyjobByCjaddressCount(String key);

	List<Companyjob> getCompanyjobByCjaddress(String key, int currentPaging,
			int pageSize);
	
}
