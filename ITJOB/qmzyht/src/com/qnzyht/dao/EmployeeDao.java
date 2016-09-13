package com.qnzyht.dao;

import java.util.List;

import com.qmzyht.pojo.Employee;



public interface EmployeeDao {

public Employee getEmployeeByEid(int eid);	//查询用户-根据id
	
	public Employee getEmployeeByName(String name);	//查询用户-根据名字
	
	public List<Employee> findAllEmployee();	//得到全部用户
	
	public List<Employee> getEmployee(int currentPaging, int pageSize);	//查找用户-按页
	
	public List<Employee> getEmployeeByEsex(String name, int currentPaging, int pageSize);	//查找指定公众号名的用户-按页
	
	public int getEmployeeCount();	//得到所有用户数
	
	public int editEmployee(Employee employee);	//更新企业用户
	
	public int deleteEmployee(int eid);	//删除企业用户

	public int getEmployeeByEsexCount(String name);


	

}
