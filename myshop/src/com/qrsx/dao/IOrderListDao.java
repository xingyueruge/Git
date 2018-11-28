package com.qrsx.dao;

import java.io.Serializable;

import com.qrsx.pojo.Orderlist;
import com.qrsx.pojo.User;

public interface IOrderListDao {

	public void save(Orderlist obj);
	
	public void delete(Orderlist obj);
	
	public void update(Orderlist obj);
	
	public Orderlist get(String id);
	
	public boolean isUniqueName(String name);
}
