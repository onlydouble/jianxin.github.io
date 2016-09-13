package com.qmzyht.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qmzyht.pojo.Admin;
import com.qmzyht.service.AdminService;
import com.qmzyht.util.Util;

public class AdminAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private String msg;
	
	@Autowired
	private AdminService adminService;
	
	private int id;
	private String username;
	private String password;
	private Date regdate;
	private int state;
	
	private List<Admin> lst;
	private int currentPage = 1;
	private int totalPage;
	private int totalSize;
	private int pageSize = Util.PAGE_SIZE;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public List<Admin> getLst() {
		return lst;
	}

	public void setLst(List<Admin> lst) {
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

	public String adminLogin() {	//管理员用户登录
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		//校验验证码
		String rand = (String)request.getSession().getAttribute(Util.RAND);
		String code = request.getParameter("confirm");
		if ((rand == null) || (code == null) || (!rand.equals(code))) {
			addFieldError(Util.MSG, "验证码错误!");
			return Util.RESULT_FAILED;
		}
		//校验用户名和密码的有效性
		if ((username == null) || (username.isEmpty()) || (username.length() < 4)) {
			addFieldError(Util.MSG, "无效的用户名!");
			return Util.RESULT_FAILED;
		}
		if ((password == null) || (password.isEmpty()) || (password.length() < 4)) {
			addFieldError(Util.MSG, "无效的密码!");
			return Util.RESULT_FAILED;
		}
		//验证用户
		Admin admin = adminService.login(username, password);
		if (admin == null) {
			addFieldError(Util.MSG, "登陆失败!");
			return Util.RESULT_FAILED;
		}
		request.getSession().setAttribute(Util.LOGIN_ADMINNAME, admin.getUsername());	//标注系统管理员用户名
		id = admin.getId();
		state = admin.getState();
		regdate = admin.getRegdate();
		return Util.RESULT_SUCCESS;
	}
	
	public String adminQuery() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		String searchType = request.getParameter("searchType");
		String key = request.getParameter("searchname");
		int count = 0;
		pageSize = Util.PAGE_SIZE;
		if ((searchType == null) || (searchType.equals(""))) {
			lst = adminService.getAdmin(currentPage, pageSize);
			count = adminService.getAdminCount();
		} else if (searchType.equals("query_username")) {	//根据用户名查询
			pageSize = Util.PAGE_MAXSIZE;
			lst = new ArrayList<Admin>();
			Admin tmp = adminService.getAdminByUsername(key);
			if (tmp != null) {
				lst.add(tmp);
			}
			count = lst.size();
		}
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return Util.RESULT_SUCCESS;
	}
	
	public String selfQuery() {
		if ((username == null) || (username.isEmpty()) || (username.length() < 4)) {
			addFieldError(Util.MSG, "无效的用户名!");
			return Util.RESULT_FAILED;
		}
		Admin admin = adminService.getAdminByUsername(username);
		if (admin == null) {
			addFieldError(Util.MSG, "该用户不存在!");
			return Util.RESULT_FAILED;
		}
		id = admin.getId();
		password = admin.getPassword();
		state = admin.getState();
		regdate = admin.getRegdate();
		return Util.RESULT_SUCCESS;
	}
	
	public String adminAdd() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_ADDADMIN);	//设置操作类型
		if ((username == null) || (username.isEmpty()) || (username.length() < 4)) {
			addFieldError(Util.MSG, "请输入合法的用户名!");
			return Util.RESULT_FAILED;
		}
		String pass = request.getParameter("password2");
		if ((password == null) || (password.isEmpty()) || (password.length() < 4) || (pass == null) || (!password.equals(pass))) {
			addFieldError(Util.MSG, "输入的密码不符合要求!");
			return Util.RESULT_FAILED;
		}
		
		Admin admin = new Admin();
		admin.setUsername(username);
		admin.setPassword(password);
		admin.setState(Admin.ADMIN_STATE_ENABLE);
		admin.setRegdate(new Date());
		if (adminService.addAdmin(admin) > 0) {
			return Util.RESULT_SUCCESS;
		}
		addFieldError(Util.MSG, "添加系统管理员失败!");
		return Util.RESULT_FAILED;
	}
	
	public String adminEdit() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_EDITADMIN);	//设置操作类型
		String pass = request.getParameter("password2");
		if ((password == null) || (password.isEmpty()) || (password.length() < 4) || (pass == null) || (!password.equals(pass))) {
			addFieldError(Util.MSG, "输入的密码不符合要求!");
			return Util.RESULT_FAILED;
		}
		Admin admin = new Admin();
		admin.setId(id);
		admin.setUsername(username);
		admin.setPassword(password);
		admin.setRegdate(regdate);
		String stateOpt = request.getParameter("state");
		if ((stateOpt == null) || (stateOpt.equals("")) || (stateOpt.equals("0"))) {
			admin.setState(Admin.ADMIN_STATE_DISABLE);
		} else {
			admin.setState(Admin.ADMIN_STATE_ENABLE);
		}
		
		if (adminService.editAdmin(admin) > 0) {
			return Util.RESULT_SUCCESS;
		}
		addFieldError(Util.MSG, "更新系统管理员失败!");
		return Util.RESULT_FAILED;
	}

	public String adminEditSelf() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_EDITSELFADMIN);	//设置操作类型
		String pass = request.getParameter("password2");
		if ((password == null) || (password.isEmpty()) || (password.length() < 4) || (pass == null) || (!password.equals(pass))) {
			addFieldError(Util.MSG, "输入的密码不符合要求!");
			return Util.RESULT_FAILED;
		}
		Admin admin = new Admin();
		admin.setId(id);
		admin.setUsername(username);
		admin.setPassword(password);
		admin.setRegdate(regdate);
		admin.setState(Admin.ADMIN_STATE_ENABLE);
		
		if (adminService.editAdmin(admin) > 0) {
			return Util.RESULT_SUCCESS;
		}
		addFieldError(Util.MSG, "更新个人信息失败!");
		return Util.RESULT_FAILED;
	}

	public String adminDelete() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_DELETEADMIN);	//设置操作类型
		if (adminService.deleteAdmin(id) > 0) {
			return Util.RESULT_SUCCESS;
		}
		addFieldError(Util.MSG, "删除系统管理员失败!");
		return Util.RESULT_FAILED;
	}
}