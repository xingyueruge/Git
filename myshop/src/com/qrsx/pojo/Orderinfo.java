package com.qrsx.pojo;

import java.util.Date;

/**
 * Orderinfo entity. @author MyEclipse Persistence Tools
 */

public class Orderinfo implements java.io.Serializable {

	// Fields

	private String orderid;
	private String userid;
	private String orderstyle;
	private String orderstate;
	private Date odate;

	// Constructors

	/** default constructor */
	public Orderinfo() {
	}

	/** full constructor */
	public Orderinfo(String userid, String orderstyle, String orderstate,
			Date odate) {
		this.userid = userid;
		this.orderstyle = orderstyle;
		this.orderstate = orderstate;
		this.odate = odate;
	}

	// Property accessors

	public String getOrderid() {
		return this.orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getOrderstyle() {
		return this.orderstyle;
	}

	public void setOrderstyle(String orderstyle) {
		this.orderstyle = orderstyle;
	}

	public String getOrderstate() {
		return this.orderstate;
	}

	public void setOrderstate(String orderstate) {
		this.orderstate = orderstate;
	}

	public Date getOdate() {
		return this.odate;
	}

	public void setOdate(Date odate) {
		this.odate = odate;
	}

	public Orderinfo(String orderid, String userid, String orderstyle,
			String orderstate, Date odate) {
		super();
		this.orderid = orderid;
		this.userid = userid;
		this.orderstyle = orderstyle;
		this.orderstate = orderstate;
		this.odate = odate;
	}

}