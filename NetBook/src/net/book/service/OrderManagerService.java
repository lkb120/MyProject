package net.book.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.book.entity.User;
import net.book.entity.UserOrder;
import net.book.entity.Order;
import net.book.repository.OrderManagerIml;
import net.book.utils.Myutils;

public class OrderManagerService implements OrderManagerIml{

	public List<Order> getUserOrders() {
		SqlSession sqlSession = null;
		List<Order> List=null;
		try {
			sqlSession = Myutils.getSqlSession();
			List = sqlSession.selectList("OrderNameSpace.getUserOrders");
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
		return List;
	}
	
	
	public List<Order> getOrders(String userName) {
		SqlSession sqlSession = null;
		List<Order> List=null;
		try {
			Order order=new Order();
			order.setUser_name(userName);
			sqlSession = Myutils.getSqlSession();
			List = sqlSession.selectList("OrderNameSpace.getMyOrder",order);
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
		return List;
	}
   public  List<UserOrder> getUserOrderList(){
	  List<UserOrder> List = getUserOrder();
	  List<Order>  orderlist=getUserOrders();
	  List<UserOrder> userOrderList=new ArrayList<UserOrder>();
      for(UserOrder order:List){
    	  UserOrder userOrder=new UserOrder();
    	 /*System.out.println(order.getUserName()+"::"+getAccount(orderlist,order.getUserName())+"::"+
    			 getPrice(orderlist,order.getUserName()));*/
    	 userOrder.setUserName(order.getUserName());
    	 userOrder.setAccount(getAccount(orderlist,order.getUserName()));
    	 userOrder.setPrice(getPrice(orderlist,order.getUserName()));
    	 userOrderList.add(userOrder);
      }
    return userOrderList;
   }
   private  Double getPrice(List<Order>  orderlist,String userName){
	   double price=0;
	   for(Order order:orderlist){
		   if(userName.equals(order.getUser_name())){
			   price+=order.getPrice();
		   }
	   }
	   return price;
	   
   }
   private int getAccount(List<Order>  orderlist,String userName){
	   int account=0;
	   for(Order order:orderlist){
		   if(userName.equals(order.getUser_name())){
			   account++;
		   }
	   }
	   return account;
   }
   
   
   public List<UserOrder> getUserOrder() {
		SqlSession sqlSession = null;
		List<UserOrder> orderList=null;
		try {
			sqlSession = Myutils.getSqlSession();
			orderList = sqlSession.selectList("OrderNameSpace.getUserOrder");
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
		return orderList;
	}
   
   
   public static void main(String[] args){
	   List<Order> userOrderList= new OrderManagerService().getOrders("4567@qq.com");
	   for(Order order:userOrderList){
		   System.out.println(order.getUser_name()+"::"+order.getAccout()+"::"+order.getPrice());
	   }
   
   }
}
