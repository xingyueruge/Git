package com.qrsx.action;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.qrsx.dao.OrderListDao;
import com.qrsx.pojo.Commodity;
import com.qrsx.pojo.Orderlist;
import com.qrsx.pojo.User;
import com.qrsx.shop.ShopManager;

public class CarAction extends ActionSupport implements ModelDriven<Commodity>{

	Commodity c=new Commodity();
	
	public CarAction() {
		// TODO Auto-generated constructor stub
	}
	
	
	public String addCar(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession(true);
		
		String cid=c.getCid();
		
		Commodity realc=ShopManager.getCommodityById(cid);

		List<Orderlist> car = (List<Orderlist>) session.getAttribute("car");

		if (car == null) {

			car = new ArrayList<Orderlist>();
			session.setAttribute("car", car);
		}

		for (int i = 0; i < car.size(); i++) {
			Orderlist ol = car.get(i);
			
			if (ol.getCommodity().getCid().equals(cid)) {
				
				
				ol.setCsize(ol.getCsize().intValue() + 1);
				
				return "car_success";
			}

		}
		
		Orderlist ol = new Orderlist("", realc.getCid(), 1, "", realc);

		car.add(ol);

		return "car_success";
		
	}
	
	
	
	public Commodity getC() {
		return c;
	}





	public void setC(Commodity c) {
		this.c = c;
	}





	public Commodity getModel() {
		// TODO Auto-generated method stub
		return c;
	}

}
