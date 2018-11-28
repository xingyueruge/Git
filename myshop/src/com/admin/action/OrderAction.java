package com.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.qrsx.pojo.Orderinfo;
import com.qrsx.pojo.Orderlist;
import com.qrsx.pojo.User;
import com.qrsx.shop.ShopManager;
import com.qrsx.util.Dbhelper;

public class OrderAction extends ActionSupport implements ModelDriven<Orderinfo>{
	
	Orderinfo o=new Orderinfo();
	

	
	public String add() throws Exception{
	
		o.setOrderid(Dbhelper.getPrimaryKey()+"");
		ShopManager.addOrderInfo(o);
		
		return "inadd_success";
	}
	
	public String list() throws Exception{
		//list=service.list();
		return "inlist_success";
	}

	public String delete() throws Exception{
		
		ShopManager.deleteOrderInfo(o);
		
	
		return "indelete_success";
	}
	
	public String select() throws Exception{
		//product=service.selectByID(product.getPid());
		return "inselect_success";
	}
	

	public String update() throws Exception{
		
		
		
		return "inupdate_success";
	}
	
	public Orderinfo getModel() {
		return o;
	}

	public Orderinfo getO() {
		return o;
	}

	public void setO(Orderinfo o) {
		this.o = o;
	}

	
	


	
}
