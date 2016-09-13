package com.qmzyht.service;

import java.util.List;

import com.qmzyht.pojo.Employee;

public interface EmployeeService {

	public int editEmployee(Employee employee);
	
	public int deleteEmployee(int eid);
	
	public List<Employee> getEmployee(int currentPaging, int pageSize);
	
	public Employee getEmployeeByEid(int eid);
	
	
	public List<Employee> getEmployeeByEsex(String name, int currentPaging, int pageSize);
	
	public int getEmployeeCount();
	
	public int getEmployeeByEsexCount(String name);

	public Employee getEmployeeByEname(String ename);
		
}
