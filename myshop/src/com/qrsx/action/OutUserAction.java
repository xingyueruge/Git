package com.qrsx.action;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.qrsx.pojo.User;
import com.qrsx.shop.ShopManager;
import com.qrsx.util.Dbhelper;

public class OutUserAction extends ActionSupport implements ModelDriven<User>{
	
	User u=new User();
	

	
	public String add() throws Exception{
		System.out.println(u.getLogname());
		u.setUserid(Dbhelper.getPrimaryKey()+"");
		ShopManager.addUser(u);
		return "add_success";
	}
	
	public String list() throws Exception{
		//list=service.list();
		return "list_success";
	}

	public String delete() throws Exception{
		
		
		ShopManager.deleteUser(u);
		return "delete_success";
	}
	
	
	public String login() throws Exception{
		
		String uname=u.getLogname();
		String passord=u.getKeyword();
		
		User real=ShopManager.login(uname);
		if(real==null){
			
			return "outlogin_no";
		}
		if(passord.equals(real.getKeyword()) && uname.length()>0 && passord.length()>0){
			
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session=request.getSession();
			User useronline=(User)session.getAttribute("user");
			if(useronline==null){
				
				session.setAttribute("user", real);
			}
			
			return "outlogin_success";
			
		}
		
		return "outlogin_no";
	}
	
	public String select() throws Exception{
		//product=service.selectByID(product.getPid());
		return "select_success";
	}
	
	public String update() throws Exception{
		
		ShopManager.updateUser(u);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session=request.getSession();
	
		
			
	    session.setAttribute("user", u);
	
		return "outupdate_success";
	}
	
	public User getModel() {
		return u;
	}
	public User getU() {
		return u;
	}
	public void setU(User u) {
		this.u = u;
	}
	


	
}
