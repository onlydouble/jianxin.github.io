package com.qmzyht.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qmzyht.pojo.Company;
import com.qmzyht.service.CompanyService;
import com.qmzyht.util.Util;

public class CompanyAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private String msg;
	
	@Autowired
	private CompanyService companyService;
	
	private int cid;
	private String cname;
	private String cpassword;
	private String cemail;
	private String caddress;
	private String clink;
	private String cphone;
	private String cimg;
	

	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	
	private List<Company> lst;
	private int currentPage = 1;
	private int totalPage;
	private int totalSize;
	private int pageSize = Util.PAGE_SIZE;

	public CompanyService getCompanyService() {
		return companyService;
	}

	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	public String getCemail() {
		return cemail;
	}

	public void setCemail(String cemail) {
		this.cemail = cemail;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public String getClink() {
		return clink;
	}

	public void setClink(String clink) {
		this.clink = clink;
	}

	public String getCphone() {
		return cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}

	public String getCimg() {
		return cimg;
	}

	public void setCimg(String cimg) {
		this.cimg = cimg;
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

	public List<Company> getLst() {
		return lst;
	}

	public void setLst(List<Company> lst) {
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



	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public String companyQuery() {	//企业用户查询
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		String searchType = request.getParameter("searchType");
		String key = request.getParameter("searchname");
		int count = 0;
		pageSize = Util.PAGE_SIZE;
		if ((searchType == null) || (searchType.equals(""))) {
			lst = companyService.getCompany(currentPage, pageSize);
			count = companyService.getCompanyCount();
		} else if (searchType.equals("query_cname")) {	//根据用户名查询
			pageSize = Util.PAGE_MAXSIZE;
			lst = new ArrayList<Company>();
			Company tmp = companyService.getCompanyByCname(key);
			if (tmp != null) {
				lst.add(tmp);
			}
			count = lst.size();
		} else if (searchType.equals("query_caddress")) {
			//根据地域查询
			pageSize = Util.PAGE_MAXSIZE;
			lst = companyService.getCompanyByCaddress(key, currentPage, pageSize);
			count = companyService.getCompanyByCaddressCount(key);
		}
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return Util.RESULT_SUCCESS;
	}
	
	public String selfQuery() {
		if ((cname == null) || (cname.isEmpty())) {
			addFieldError(Util.MSG, "无效的用户名!");
			return Util.RESULT_FAILED;
		}
		Company company = companyService.getCompanyByCname(cname);
		if (company == null) {
			addFieldError(Util.MSG, "该用户不存在!");
			return Util.RESULT_FAILED;
		}
		cid = company.getCid();
		cpassword = company.getCpassword();
		cemail = company.getCemail();
		caddress = company.getCaddress();
		clink = company.getClink();
		cimg = company.getCimg();
		cphone = company.getCphone();
		cname = company.getCname();
		return Util.RESULT_SUCCESS;
	}
	
	
	public String companyEdit() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_EDITCOMPANY);	//设置操作类型
		String pass = request.getParameter("password2");
		if ((cpassword == null) || (cpassword.isEmpty())  || (pass == null) || (!cpassword.equals(pass))) {
			addFieldError(Util.MSG, "输入的密码不符合要求!");
			return Util.RESULT_FAILED;
		}
		if ((caddress == null) || (caddress.isEmpty())) {
			addFieldError(Util.MSG, "请输入合法的地址!");
			return Util.RESULT_FAILED;
		}
         
		Company company = new Company();
		System.out.println("cid="+cid);
		company.setCid(cid);
		company.setCname(cname);
		company.setCpassword(cpassword);
		company.setCemail(cemail);
		company.setCaddress(caddress);
		company.setClink(clink);
		company.setCphone(cphone);
		company.setCimg(cimg);
		System.out.println(caddress);

		String oldimg = request.getParameter("oldimg");	
		if (upload == null) {	//头像未变化
			company.setCimg(oldimg);
		} else {	//头像发生改变
			try {
				String mp = request.getSession().getServletContext().getRealPath("");
				String rp = Util.PATH_AVATAR+cname+Util.getNo();
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
				System.out.println(path);
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
				company.setCimg(rp);
				System.out.println(rp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				addFieldError(Util.MSG, "图片文件上传失败!");
				return Util.RESULT_FAILED;
			}
			
		}
		if (companyService.editCompany(company) > 0) {
			return Util.RESULT_SUCCESS;
		}	
		addFieldError(Util.MSG, "更新企业用户 !");
		return Util.RESULT_FAILED;
	}
	
	public String companyEditSelf() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_EDITSELFCOMPANY);	//设置操作类型
		String pass = request.getParameter("password2");
		if ((cpassword == null) || (cpassword.isEmpty())|| (pass == null) || (!cpassword.equals(pass))) {
			addFieldError(Util.MSG, "输入的密码不符合要求!");
			return Util.RESULT_FAILED;
		}
		if ((caddress == null) || (caddress.isEmpty())) {
			addFieldError(Util.MSG, "请输入合法的地址!");
			return Util.RESULT_FAILED;
		}
		Company company = new Company();
		company.setCname(cname);
		company.setCpassword(cpassword);
		company.setCemail(cemail);
		company.setCaddress(caddress);
		company.setClink(clink);
		company.setCphone(cphone);
		company.setCimg(cimg);
		
		String oldimg = request.getParameter("oldimg");
		if (upload == null) {	//头像未变化
			company.setCimg(oldimg);
		} else {	//头像发生改变
			try {
				String mp = request.getSession().getServletContext().getRealPath("");
				String rp = Util.PATH_AVATAR + cname + Util.getNo();
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
				
				company.setCimg(rp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				addFieldError(Util.MSG, "图片文件上传失败!");
				return Util.RESULT_FAILED;
			}
		}
		
		if (companyService.editCompany(company) > 0) {
			return Util.RESULT_SUCCESS;
		}
		addFieldError(Util.MSG, "更新个人信息失败!");
		return Util.RESULT_FAILED;
	}

	public String companyDelete() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_DELETECOMPANY);	//设置操作类型
		

	Company company = companyService.getCompanyByCid(cid);
		
		if (companyService.deleteCompany(cid) > 0) {
			//删除用户之后要把其头像文件也删除
			File file = new File(request.getSession().getServletContext().getRealPath("") + company.getCimg());
			if (file.isFile() && file.exists()) {
				file.delete();
			}			
			return Util.RESULT_SUCCESS;
		}
		addFieldError(Util.MSG, "删除企业用户失败!");
		return Util.RESULT_FAILED;
	}
}