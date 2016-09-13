package com.service;

import java.util.List;

import com.dao.CompanyjobDao;
import com.entity.Companyjob;
import com.entity.User;

public class CompanyjobService {

	private CompanyjobDao companyjobDao;
	
	public void setCompanyjobDao(CompanyjobDao companyjobDao) {
		// TODO Auto-generated method stub
		this.companyjobDao = companyjobDao;
	}
	
	//添加
	public void addCompanyjob(Companyjob companyjob){
		
		 companyjobDao.save(companyjob);
	}
	//删除
	public void deleteCompanyjob(Companyjob companyjob){
		companyjobDao.delete(companyjob.getCjid());
	}
	public void deleteCompanyjobByID(int companyjobID){

		companyjobDao.delete(companyjobID);
	}
	//列表
	public List<Companyjob> getUsers(){
		
		return companyjobDao.getAll();
		
	}	
	//
	public Companyjob getCompanyjob(int cjid){
		return companyjobDao.getById(cjid);
		
	}

	//更新 
	public void updateCompanyjob(Companyjob companyjob) {
		// TODO Auto-generated method stub
		 companyjobDao.update(companyjob);
	}
	//获取职位
	public Companyjob getCompanyByCjob(String cjob){
	
		return companyjobDao.getCompanyByCjob(cjob);
	}
	//分页列表
	public List<Companyjob> getCompanyjob(int currentPaging, int pageSize){

		return  companyjobDao.getCompanyjob(currentPaging, pageSize);		 		
	}

	//获取职位的数量
	public int getCompanyjobByCjobCount(String cjob) {
		return companyjobDao.getCompanyjobByCjobCount(cjob);
	}
	//
	public int getCompanyjobByCjobcjCount(String cjaddress) {
		// TODO Auto-generated method stub
		return companyjobDao.getCompanyjobByCjobcjCount(cjaddress);
	}

	//获取职位的
	public int getCompanyjobCount(){
	
		return companyjobDao.getCompanyjobCount();
	}

	public List<Companyjob> getCompanyjobBycjob(String csalary, int currentPage,
			int pageSize) {
		// TODO Auto-generated method stub
		List<Companyjob> list = companyjobDao.getCompanyjobBycjob(csalary, currentPage, pageSize);
		return list;
	}

	public List<Companyjob> getCompanyjobBycjobBycj(String cjaddress,
			int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		List<Companyjob> list = companyjobDao.getCompanyjobBycjaddress(cjaddress, currentPage, pageSize);
		return list;
	}

	public List<Companyjob> getCompanyjobByjob(String cjob, int currentPage,
			int pageSize) {
		// TODO Auto-generated method stub
		List<Companyjob> list = companyjobDao.getCompanyjobByjob(cjob, currentPage, pageSize);
		return list;
	}

	public int getCompanyjobByjobCount(String cjob) {
		// TODO Auto-generated method stub
		return companyjobDao.getCompanyjobByjobCount(cjob);
	}


	//查询
	/*public void queryCompanyjob(Companyjob companyjob) {
		// TODO Auto-generated method stub
		companyjobDao.query(companyjob);
	}
*/



	/*public void deleteCompanyjob(int cjid) {
		// TODO Auto-generated method stub
		companyjobDao.delete(companyjob.getCjid());
	}*/
}
