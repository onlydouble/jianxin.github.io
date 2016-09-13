package com.qmzyht.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qmzyht.pojo.Employee;
import com.qmzyht.service.EmployeeService;
import com.qmzyht.util.Util;

public class EmployeeAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	private String msg;
	
	@Autowired
	private EmployeeService employeeService;
	
	
	private int eid; // 用户编号
	private String eno; // 用户登录账号
	private String epassword; // 登录密码
	private String ename; // 用户姓名
	private String esex; // 用户性别
	private Date ebirth; // 用户出生日期
	private String eidnumber; // 用户身份�?
	private int ephone; // 用户联系方式
	private String email; // 用户邮箱
    private String eimg;//用户头像
	

	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public EmployeeService getEmployeeService() {
		return employeeService;
	}
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEno() {
		return eno;
	}
	public void setEno(String eno) {
		this.eno = eno;
	}
	public String getEpassword() {
		return epassword;
	}
	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEsex() {
		return esex;
	}
	public void setEsex(String esex) {
		this.esex = esex;
	}
	public Date getEbirth() {
		return ebirth;
	}
	public void setEbirth(Date ebirth) {
		this.ebirth = ebirth;
	}
	public String getEidnumber() {
		return eidnumber;
	}
	public void setEidnumber(String eidnumber) {
		this.eidnumber = eidnumber;
	}
	public int getEphone() {
		return ephone;
	}
	public void setEphone(int ephone) {
		this.ephone = ephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEimg() {
		return eimg;
	}
	public void setEimg(String eimg) {
		this.eimg = eimg;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public List<Employee> getLst() {
		return lst;
	}
	public void setLst(List<Employee> lst) {
		this.lst = lst;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	
	private List<Employee> lst;
	private int currentPage = 1;
	private int totalPage;
	private int totalSize;
	private int pageSize = Util.PAGE_SIZE;
	
	
	public String employeeQuery() {	//用户查询
	
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		String searchType = request.getParameter("searchType");
		String key = request.getParameter("searchname");
		int count = 0;
		pageSize = Util.PAGE_SIZE;
		if ((searchType == null) || (searchType.equals(""))) {
			lst = employeeService.getEmployee(currentPage, pageSize);
			count = employeeService.getEmployeeCount();
		} else if (searchType.equals("query_ename")) {	//根据用户名查询
			pageSize = Util.PAGE_MAXSIZE;
			lst = new ArrayList<Employee>();
			Employee tmp = employeeService.getEmployeeByEname(key);
			if (tmp != null) {
				lst.add(tmp);
			}
			count = lst.size();
		} else if (searchType.equals("query_esex")) {	//根据性别查询
			pageSize = Util.PAGE_MAXSIZE;
			lst = employeeService.getEmployeeByEsex(key, currentPage, pageSize);
			count = employeeService.getEmployeeByEsexCount(key);
		}
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return Util.RESULT_SUCCESS;
	}

	public String selfQuery() {
		if ((ename == null) || (ename.isEmpty())) {
			addFieldError(Util.MSG, "无效的用户名!");
			return Util.RESULT_FAILED;
		}
		Employee employee = employeeService.getEmployeeByEname(ename);
		if (employee == null) {
			addFieldError(Util.MSG, "该用户不存在!");
			return Util.RESULT_FAILED;
		}
		eid = employee.getEid();
		epassword = employee.getEpassword();
		email = employee.getEmail();
		eno = employee.getEno();
		esex = employee.getEsex();
		eimg = employee.getEimg();
		ephone = employee.getEphone();
		eidnumber = employee.getEidnumber();
		esex = employee.getEsex();
		ebirth = employee.getEbirth();
		return Util.RESULT_SUCCESS;
	}

	public String employeeEdit() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_EDITEMPLOYEE);	//设置操作类型
		String pass = request.getParameter("password2");
		if ((epassword == null) || (epassword.isEmpty())||(!epassword.equals(pass))) {
			addFieldError(Util.MSG, "输入的密码不符合要求!");
			return Util.RESULT_FAILED;
		}
		
		
		 String oldimg = request.getParameter("oldimg");
		Employee employee = new Employee();
		employee.setEname(ename);
		employee.setEpassword(epassword);
		employee.setEmail(email);
		employee.setEidnumber(eidnumber);
		employee.setEsex(esex);
		employee.setEphone(ephone);
		employee.setEimg(eimg);
		employee.setEbirth(ebirth);
	
		
		if (upload == null) {	//头像未变化
			employee.setEimg(oldimg);
		} else {	//头像发生改变
			try {
				String mp = request.getSession().getServletContext().getRealPath("");
				String rp = Util.PATH_AVATAR+ename + Util.getNo();
				if ((!uploadContentType.equals("image/jpeg")) && (!uploadContentType.equals("image/gif")) && (!uploadContentType.equals("image/bmp"))) {
					addFieldError(Util.MSG, "不支持的图片格式!");
					return Util.RESULT_FAILED;
				}
				long sz = Util.getFileSize(upload);
				if ((sz <= 0) || (sz > 10*1024)) {
					addFieldError(Util.MSG, "文件大小限制为10K!");
					return Util.RESULT_FAILED;
				}
				rp += uploadFileName.substring(uploadFileName.lastIndexOf("."));
				String path = mp + rp;
				FileOutputStream fos = new FileOutputStream(path);	//对文件进行写操作
				//对文件进行读操作
				FileInputStream fis = new FileInputStream(upload);
				byte[] buffer=new byte[1024];
				int len = 0;
				while ((len = fis.read(buffer)) > 0) {
					fos.write(buffer, 0, len);
				}
				fos.close();
				fis.close();
				//若有原图片，则删除之
				File file = new File(mp + oldimg);
				if (file.isFile() && file.exists()) {
					file.delete();
				}
				
				employee.setEimg(rp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				addFieldError(Util.MSG, "图片文件上传失败!");
				return Util.RESULT_FAILED;
			}
		}
		
		addFieldError(Util.MSG, "更新企业用户失败!");
		return Util.RESULT_FAILED;
	}
     
	public String employeeDelete() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_DELETEEMPLOYEE);	//设置操作类型
		
		Employee employee = employeeService.getEmployeeByEid(eid);
		
		if (employeeService.deleteEmployee(eid) > 0) {
			//删除用户之后要把其头像文件也删除
			File file = new File(request.getSession().getServletContext().getRealPath("") + employee.getEimg());
			if (file.isFile() && file.exists()) {
				file.delete();
			}			
			return Util.RESULT_SUCCESS;
		}
		addFieldError(Util.MSG, "删除企业用户失败!");
		return Util.RESULT_FAILED;
	}
}
