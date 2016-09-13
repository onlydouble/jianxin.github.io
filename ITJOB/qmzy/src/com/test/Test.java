package com.test;

import static org.junit.Assert.*;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.action.CompanyjobAction;
import com.entity.Companyjob;
import com.entity.Employee;

public class Test {

	@org.junit.Test
	public void test() {
		ApplicationContext applicationContext =
				new ClassPathXmlApplicationContext("applicationContext.xml");
		CompanyjobAction companyjobAction = 
				applicationContext.getBean(CompanyjobAction.class);
		companyjobAction.addJob();
	}
	
	@org.junit.Test
	public void gettest(){
		@SuppressWarnings("unused")
		ApplicationContext applicationContext =
				new ClassPathXmlApplicationContext("applicationContext.xml");
/*		Employee employee1=applicationContext.getBean(Employee.class);
		System.out.println(employee1.getEname());*/
	}

}
