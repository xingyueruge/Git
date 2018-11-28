package com.qrsx.pojo;

/**
 * Type entity. @author MyEclipse Persistence Tools
 */

public class Type{

	// Fields

	private String tid;
	private String tname;
	private String tdescip;

	// Constructors

	/** default constructor */
	public Type() {
	}

	/** minimal constructor */
	public Type(String tid) {
		this.tid = tid;
	}

	/** full constructor */
	public Type(String tid, String tname, String tdescip) {
		this.tid = tid;
		this.tname = tname;
		this.tdescip = tdescip;
	}

	// Property accessors

	public String getTid() {
		return this.tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTdescip() {
		return this.tdescip;
	}

	public void setTdescip(String tdescip) {
		this.tdescip = tdescip;
	}

}