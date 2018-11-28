package com.qrsx.pojo;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields
/*	create table user(
		    userid varchar(50) primary key,
		    logname varchar(50) unique not null,
		    keyword varchar(50) not null,
		    usersex varchar(5) ,
		    userage varchar(5) ,
		    useraddress varchar(50),
		    userzipcode varchar(50),
		    usertelephone varchar(50)
		    );*/
	private String userid;
	private String logname;
	private String keyword;
	private String usersex;
	private String userage;
	private String useraddress;
	private String userzipcode;
	private String usertelephone;
	// Constructors
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getLogname() {
		return logname;
	}
	public void setLogname(String logname) {
		this.logname = logname;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getUsersex() {
		return usersex;
	}
	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}
	public String getUserage() {
		return userage;
	}
	public void setUserage(String userage) {
		this.userage = userage;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	public String getUserzipcode() {
		return userzipcode;
	}
	public void setUserzipcode(String userzipcode) {
		this.userzipcode = userzipcode;
	}
	public String getUsertelephone() {
		return usertelephone;
	}
	public void setUsertelephone(String usertelephone) {
		this.usertelephone = usertelephone;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(String userid, String logname, String keyword, String usersex,
			String userage, String useraddress, String userzipcode,
			String usertelephone) {
		super();
		this.userid = userid;
		this.logname = logname;
		this.keyword = keyword;
		this.usersex = usersex;
		this.userage = userage;
		this.useraddress = useraddress;
		this.userzipcode = userzipcode;
		this.usertelephone = usertelephone;
	}
	
}