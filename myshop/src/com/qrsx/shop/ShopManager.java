package com.qrsx.shop;
import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.qrsx.dao.CommodityDao;
import com.qrsx.dao.OrderInfoDao;
import com.qrsx.dao.OrderListDao;
import com.qrsx.dao.TypeDao;
import com.qrsx.dao.UserDao;
import com.qrsx.pojo.Commodity;
import com.qrsx.pojo.Orderinfo;
import com.qrsx.pojo.Orderlist;
import com.qrsx.pojo.Type;
import com.qrsx.pojo.User;
public class ShopManager {
	private static ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
	private static UserDao userdao=(UserDao)context.getBean("UserDao");
	private static CommodityDao commoditydao=(CommodityDao)context.getBean("CommodityDao");
	private static TypeDao typedao=(TypeDao)context.getBean("TypeDao");
	private static OrderInfoDao orderinfodao=(OrderInfoDao)context.getBean("OrderInfoDao");
	private static OrderListDao orderlistdao=(OrderListDao)context.getBean("OrderListDao");	
/*	private static UserDao userdao=new UserDao();
	private static CommodityDao commoditydao=new CommodityDao();
	private static TypeDao typedao=new TypeDao();
	private static OrderInfoDao orderinfodao=new OrderInfoDao();
	private static OrderListDao orderlistdao=new OrderListDao();*/
	/**
	 * 对用户的增、删、改、查
	 * @param user
	 */
	
	public static void addUser(User user){		
		userdao.save(user);	
	}
	public static void deleteUser(User user){		
		userdao.delete(user);	
	}
	public static void updateUser(User user){		
		userdao.update(user);	
	}
	public static List<User> listUser(){		
		return userdao.list();	
	}
	public static User getUserById(String uid){		
		return userdao.get(uid);	
	}
	public static List<User> selectUserLikeName(String name){
		
		return userdao.selectLikeName(name);
	}
	
    public static User login(String name){
		List<User> al=userdao.selectName(name);
    	if(al.size()>0)
    		return al.get(0);
    	else
    		return new User();
		
	}
	/**
	 * 对商品的增、删、改、查
	 * @param user
	 */
	
	public static void addCommodity(Commodity commodity){		
		commoditydao.save(commodity);	
	}
	public static void deleteCommodity(Commodity commodity){		
		commoditydao.delete(commodity);	
	}
	public static void updateCommodity(Commodity commodity){		
		commoditydao.update(commodity);	
	}
	public static List<Commodity> listCommodity(){		
		return commoditydao.list();	
	}
	public static Commodity getCommodityById(String cid){		
		return commoditydao.get(cid);	
	}
	public static List<Commodity> selectCommodityLikeName(String cname){
		
		return commoditydao.selectLikeName(cname);
	}
	
   public static List<Commodity> listCommodityByTypeid(String typeid){
		
		return commoditydao.listByTypeId(typeid);
	}
	
	/**
	 * 对类型的增、删、改、查
	 * @param user
	 */
	
	public static void addType(Type type){		
		typedao.save(type);	
	}
	public static void deleteType(Type type){		
		typedao.delete(type);	
	}
	public static void updateType(Type type){		
		typedao.update(type);	
	}
	public static List<Type> listType(){		
		return typedao.list();	
	}
	public static Type getTypeById(String tid){		
		return typedao.get(tid);	
	}
	public static List<Type> selectTypeLikeName(String tname){
		
		return typedao.selectLikeName(tname);
	}
	/**
	 * 对订单表的增、删、改、查
	 * @param user
	 */
	
	public static void addOrderInfo(Orderinfo orderinfo){		
		orderinfodao.save(orderinfo);	
	}
	public static void deleteOrderInfo(Orderinfo orderinfo){		
		orderinfodao.delete(orderinfo);	
	}
	public static void updateOrderInfo(Orderinfo orderinfo){		
		orderinfodao.update(orderinfo);	
	}
	public static List<Orderinfo> listOrderInfo(){		
		return orderinfodao.list();	
	}
	public static Orderinfo getOrderInfoById(String tid){		
		return orderinfodao.get(tid);	
	}
	public static List<Orderinfo> selectOrderInfoLikeName(String tname){
		
		return orderinfodao.selectLikeName(tname);
	}
	 public static List<Orderinfo> selectOrderByIds(String userid){
			
			return orderinfodao.selectOrderIds(userid);
		}
	
	/**
	 * 对订单明细表的增、删、改、查
	 * @param user
	 */
	
	public static void addOrderList(Orderlist orderinfo){		
		orderlistdao.save(orderinfo);	
	}
	public static void deleteOrderList(Orderlist orderinfo){		
		orderlistdao.delete(orderinfo);	
	}
	public static void updateOrderList(Orderlist orderinfo){		
		orderlistdao.update(orderinfo);	
	}
	public static List<Orderlist> listOrderList(){		
		return orderlistdao.list();	
	}
	public static Orderlist getOrderListById(String tid){		
		return orderlistdao.get(tid);	
	}
	public static List<Orderlist> selectOrderListLikeName(String tname){
		
		return orderlistdao.selectLikeName(tname);
	}
    public static List<Orderlist> selectListByIds(String listid){
			
			return orderlistdao.selectOrderIds(listid);
		}
	public static void main(String[] args) {
		
		System.out.println(ShopManager.listType().size());
		
		
	}
}
