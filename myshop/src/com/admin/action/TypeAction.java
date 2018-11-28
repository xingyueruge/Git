package com.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.qrsx.pojo.Type;
import com.qrsx.pojo.User;
import com.qrsx.shop.ShopManager;
import com.qrsx.util.Dbhelper;

public class TypeAction extends ActionSupport implements ModelDriven<Type>{
	
	Type t=new Type();
	

	
	public String add() throws Exception{
	
		t.setTid(String.valueOf(Dbhelper.getPrimaryKey()));
		ShopManager.addType(t);
		return "inadd_success";
	}
	
	public String list() throws Exception{
		
		
		return "inlist_success";
	}

	public String delete() throws Exception{
		
		
		ShopManager.deleteType(t);
		return "indelete_success";
	}
	
	public String select() throws Exception{
		//product=service.selectByID(product.getPid());
		return "inselect_success";
	}
	

	
	
	public String update() throws Exception{
		
		ShopManager.updateType(t);
		
		return "inupdate_success";
	}
	
	public Type getModel() {
		return t;
	}

	public Type getT() {
		return t;
	}

	public void setT(Type t) {
		this.t = t;
	}
	


	
}
