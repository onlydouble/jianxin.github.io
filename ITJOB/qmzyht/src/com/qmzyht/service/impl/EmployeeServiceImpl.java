package com.qmzyht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qmzyht.pojo.Employee;
import com.qmzyht.service.EmployeeService;
import com.qnzyht.dao.EmployeeDao;
@Service(value = "employeeService")
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	 private EmployeeDao employeeDao;
	@Override
	public int editEmployee(Employee employee) {
		return employeeDao.editEmployee(employee);
		}
             
	
	@Override
	public int deleteEmployee(int eid) {
		return employeeDao.deleteEmployee(eid);
		}

	@Override
	public List<Employee> getEmployee(int currentPaging, int pageSize) {
		List<Employee> list = employeeDao.getEmployee(currentPaging, pageSize);
		return list;
	}

	@Override
	public Employee getEmployeeByEid(int eid) {
		return employeeDao.getEmployeeByEid(eid);
	}

	@Override
	public Employee getEmployeeByEname(String name) {
		Employee employee = employeeDao.getEmployeeByName(name);
		return employee;
	}
	@Override
	public List<Employee> getEmployeeByEsex(String name, int currentPaging,
			int pageSize) {
		List<Employee> list = employeeDao.getEmployeeByEsex(name, currentPaging, pageSize);
		return list;
	}

	@Override
	public int getEmployeeCount() {
		return employeeDao.getEmployeeCount();
	}

	@Override
	public int getEmployeeByEsexCount(String name) {
		return employeeDao.getEmployeeByEsexCount(name);
	}



}
