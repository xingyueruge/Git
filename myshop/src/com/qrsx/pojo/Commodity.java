package com.qrsx.pojo;

import java.io.File;

/**
 * Commodity entity. @author MyEclipse Persistence Tools
 */

public class Commodity{

	// Fields

	private String cid;
	private String tid;
	private String cname;
	private Double cprice;
	private String cpicture;
	private File  cfile;

	// Constructors

	/** default constructor */
	public Commodity() {
	}

	public File getCfile() {
		return cfile;
	}

	public void setCfile(File cfile) {
		this.cfile = cfile;
	}

	/** minimal constructor */
	public Commodity(String cid, String cname) {
		this.cid = cid;
		this.cname = cname;
	}

	/** full constructor */
	public Commodity(String cid, String tid, String cname, Double cprice,
			String cpicture) {
		this.cid = cid;
		this.tid = tid;
		this.cname = cname;
		this.cprice = cprice;
		this.cpicture = cpicture;
	}

	// Property accessors

	public String getCid() {
		return this.cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getTid() {
		return this.tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Double getCprice() {
		return this.cprice;
	}

	public void setCprice(Double cprice) {
		this.cprice = cprice;
	}

	public String getCpicture() {
		return this.cpicture;
	}

	public void setCpicture(String cpicture) {
		this.cpicture = cpicture;
	}

}