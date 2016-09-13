package com.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.UserService;


public class UserAction extends ActionSupport implements RequestAware,ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	private UserService userService;
	public void setUserService(UserService userService) {
		System.out.println("111111111111111111111111111111111111");
		this.userService = userService;
	}
	
	private User user;
	
	//注册
	public String regist(){
		
		userService.addUser(user);
		request.put("user", user);
		return SUCCESS;
	}
	//查询所有
	public String list(){
		System.out.println("2222222222222222222222222222222222222");
		request.put("users", userService.getUsers());
		System.out.println("333333333333333333333333333333333333");
		return SUCCESS;
	}	
	//登录
	public String login(){
		System.out.println("inner" + user.getName());
		User user2=userService.getUserByName(user.getName());
		if(user2!=null){
			if(user.getPassword().equals(user2.getPassword())){
				request.put("user", user2);
				return SUCCESS;
			}
			return ERROR;
		}
		return INPUT;
	}
	
	
	
	private Map<String, Object> request= new HashMap<String, Object>();
	@Override
	public void setRequest(Map<String, Object> arg0) {
		request=arg0;
	}
	@Override
	public User getModel() {
		user = new User();
		return user;
	}
	
	
}
