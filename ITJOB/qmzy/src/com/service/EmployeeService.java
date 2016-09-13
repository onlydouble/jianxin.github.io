package com.service;

import java.util.List;

import com.dao.CompanyjobDao;
import com.dao.EmployeeDao;
import com.entity.Companyjob;
import com.entity.Employee;



public class EmployeeService {
	
	private EmployeeDao employeeDao;
	
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
		
	}
	//增加用户
	public void addUser(Employee employee) {
		employeeDao.add(employee);
		// TODO Auto-generated method stub
		
	}
	
	
	////
	public List<Employee> getUsers(){
		return employeeDao.getAll();
	}
	public Employee getEmployeeByName(String ename) {
		// TODO Auto-generated method stub
	
		return employeeDao.getByName(ename);
	}


}
