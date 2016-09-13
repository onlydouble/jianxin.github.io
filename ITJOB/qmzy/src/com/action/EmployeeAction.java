package com.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.entity.Employee;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.EmployeeService;








public class EmployeeAction extends ActionSupport implements RequestAware,ModelDriven<Employee>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private EmployeeService employeeService;
	
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	
	private Employee employee;
	//注册
	public String regist(){
		
		employeeService.addUser(employee);
		request.put("user", employee);
		return SUCCESS;
	}
	//显示列表
		public String list(){
			
			request.put("users", employeeService.getUsers());
			return SUCCESS;
		}
		//登录
		@SuppressWarnings("unused")
		public String login(){
			Employee user2=employeeService.getEmployeeByName(employee.getEname());
			
			
			if(user2!=null){
				System.out.println("555"+user2.toString());
				
				if(employee.getEpassword().equals(user2.getEpassword())){
					request.put("employee", user2);
					return "success";
				}else{
				return "error";
				}
			}

			
			return "error";
			
		}
		//申请
		public String Punch(){
			
			
			return SUCCESS;
		}
		
		private Map<String, Object> request= new HashMap<String, Object>();
		@Override
		public void setRequest(Map<String, Object> arg0) {
			request=arg0;
		}
		@Override
		public Employee getModel() {
			employee = new Employee();
			return employee;
		}
		
		

}
