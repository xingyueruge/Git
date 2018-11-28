package com.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.qrsx.pojo.User;
import com.qrsx.shop.ShopManager;
import com.qrsx.util.Dbhelper;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	User u=new User();
	

	
	public String add() throws Exception{
		System.out.println(u.getLogname());
		u.setUserid(Dbhelper.getPrimaryKey()+"");
		ShopManager.addUser(u);
		return "inadd_success";
	}
	
	public String list() throws Exception{
		//list=service.list();
		return "inlist_success";
	}

	public String delete() throws Exception{
		
		System.out.println(u.getUserid());
		ShopManager.deleteUser(u);
		return "indelete_success";
	}
	
	public String select() throws Exception{
		//product=service.selectByID(product.getPid());
		return "inselect_success";
	}
	
public String login() throws Exception{
		
		String uname=u.getLogname();
		String passord=u.getKeyword();
		
		User real=ShopManager.login(uname);
		if(real==null){
			
			return "inlogin_no";
		}
		if(passord.equals(real.getKeyword()) && uname.length()>0 && passord.length()>0){
			
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session=request.getSession();
			User useronline=(User)session.getAttribute("inuser");
			if(useronline==null){
				
				session.setAttribute("inuser", real);
			}
			
			return "inlogin_success";
			
		}
		
		return "inlogin_no";
	}
	
	
	public String update() throws Exception{
		
		ShopManager.updateUser(u);
		
		return "inupdate_success";
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
