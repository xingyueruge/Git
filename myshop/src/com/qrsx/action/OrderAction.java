package com.qrsx.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.qrsx.pojo.Commodity;
import com.qrsx.pojo.Orderinfo;
import com.qrsx.pojo.Orderlist;
import com.qrsx.pojo.User;
import com.qrsx.shop.ShopManager;
import com.qrsx.util.Dbhelper;

public class OrderAction extends ActionSupport implements ModelDriven<Orderinfo> {

	Orderinfo oinfo=new Orderinfo();
	public OrderAction() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Orderinfo getOinfo() {
		return oinfo;
	}

	public void setOinfo(Orderinfo oinfo) {
		this.oinfo = oinfo;
	}

	public String saveOrderAndList(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession(true);

		User u=(User)session.getAttribute("user");	
     	
     	
        String orderid="oder"+Dbhelper.getPrimaryKey();
		
	
		ShopManager.addOrderInfo(new Orderinfo(orderid,u.getUserid(),oinfo.getOrderstyle(),"ÒÑÖ§¸¶",new Date(System.currentTimeMillis())));
	    List<Orderlist> olist=(List<Orderlist>)session.getAttribute("car");
	    for (int i = 0; i < olist.size(); i++) {
	    	Orderlist ol=olist.get(i);
	    	String listid=u.getLogname()+Dbhelper.getPrimaryKey();
	    	Orderlist ol2=new Orderlist(listid,ol.getCommodity().getCid() ,
	    			ol.getCsize(), orderid);
	     	ShopManager.addOrderList(ol2);

		}
	  
	    session.removeAttribute("car");
		return "OrderAndList_succss";
	}
	
	
	
	public Orderinfo getModel() {
		// TODO Auto-generated method stub
		return oinfo;
	}

}
