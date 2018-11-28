package com.qrsx.shop;

import java.util.Date;
import java.util.List;

import com.qrsx.pojo.Commodity;
import com.qrsx.pojo.Orderinfo;
import com.qrsx.pojo.Orderlist;
import com.qrsx.pojo.Type;
import com.qrsx.pojo.User;

public class Test {
public static void main(String[] args) {


	
	Type t=ShopManager.getTypeById("0001");
	System.out.println(t.getTname());
	
	
}
}
