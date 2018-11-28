package com.qrsx.pojo;

/**
 * Orderlist entity. @author MyEclipse Persistence Tools
 */

public class Orderlist implements java.io.Serializable {

	// Fields

	private String olid;
	private String cid;
	private Integer csize;
	private String orderid;
	private Commodity commodity;

	// Constructors

	/** default constructor */
	public Orderlist() {
	}

	/** full constructor */
	public Orderlist(String cid, Integer csize, String orderid) {
		this.cid = cid;
		this.csize = csize;
		this.orderid = orderid;
	}

	// Property accessors

	public String getOlid() {
		return this.olid;
	}

	public void setOlid(String olid) {
		this.olid = olid;
	}

	public String getCid() {
		return this.cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public Integer getCsize() {
		return this.csize;
	}

	public void setCsize(Integer csize) {
		this.csize = csize;
	}

	public String getOrderid() {
		return this.orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public Commodity getCommodity() {
		return commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}

	public Orderlist(String olid, String cid, Integer csize, String orderid) {
		super();
		this.olid = olid;
		this.cid = cid;
		this.csize = csize;
		this.orderid = orderid;
	
	}

	public Orderlist(String olid, String cid, Integer csize, String orderid,
			Commodity commodity) {
		super();
		this.olid = olid;
		this.cid = cid;
		this.csize = csize;
		this.orderid = orderid;
		this.commodity = commodity;
	}
	

}