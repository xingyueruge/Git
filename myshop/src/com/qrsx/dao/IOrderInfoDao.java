package com.qrsx.dao;

import java.io.Serializable;

import com.qrsx.pojo.Orderinfo;

public interface IOrderInfoDao {

	public void save(Orderinfo obj);
	
	public void delete(Orderinfo obj);
	
	public void update(Orderinfo obj);
	
	public Orderinfo get(String id);
	
	public boolean isUniqueName(String uname);
}
