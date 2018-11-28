package com.admin.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.qrsx.pojo.Commodity;
import com.qrsx.pojo.Type;
import com.qrsx.pojo.User;
import com.qrsx.shop.ShopManager;
import com.qrsx.util.Dbhelper;

public class CommodityAction extends ActionSupport implements ModelDriven<Commodity>{
	
	Commodity c=new Commodity();
	
	/*
	 * 添加图片 
	 */
	
	public String add() throws Exception{
	
		String path=ServletActionContext.getRequest().getRealPath("upImage");
		c.setCid(String.valueOf(Dbhelper.getPrimaryKey()));
		String name=Dbhelper.getPrimaryKey()+".jpg";
		Dbhelper.copy(c.getCfile(), new File(path+"/"+name));//执行复制方法,就是这个方法把你要的文件复制到了tomcat下的工程文件了
		c.setCpicture("upImage/"+name);
		c.setCfile(null);
		ShopManager.addCommodity(c);
		return "inadd_success";
	}
	
	public String list() throws Exception{
		
		
		return "inlist_success";
	}

	public String delete() throws Exception{
		
		
		ShopManager.deleteCommodity(c);
		return "indelete_success";
	}
	
	public String select() throws Exception{
		//product=service.selectByID(product.getPid());
		return "inselect_success";
	}
	

	
	
	public String update() throws Exception{
		
		String path=ServletActionContext.getRequest().getRealPath("upImage");
		String name=Dbhelper.getPrimaryKey()+".jpg";
		Dbhelper.copy(c.getCfile(), new File(path+"/"+name));
		c.setCpicture("upImage/"+name);
		c.setCfile(null);
		ShopManager.updateCommodity(c);
	
		return "inupdate_success";
	}
	
	public Commodity getModel() {
		return c;
	}

	public Commodity getC() {
		return c;
	}

	public void setC(Commodity c) {
		this.c = c;
	}

	
}
