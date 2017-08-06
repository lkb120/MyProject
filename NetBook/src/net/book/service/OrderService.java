package net.book.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.book.entity.Address;
import net.book.entity.Book;
import net.book.entity.CarOrder;
import net.book.entity.Order;
import net.book.entity.User;
import net.book.repository.OrderIml;
import net.book.utils.Myutils;

public class OrderService implements OrderIml{

	@Override
	public void addOrder(Order order) {
		SqlSession sqlSession=Myutils.getSqlSession();
		try {
			if(order.getAccout()>1){
				sqlSession.update("OrderNameSpace.updateOrder", order);
			}else {
				sqlSession.insert("OrderNameSpace.addOrder", order);
			}
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			Myutils.closeSqlSession();
		}
	}
	private Integer getAccout(String book_isbn,String userName) {
		List<Order> orderList=getMyOrder(userName);
		int index=0;
		for(Order order:orderList) {
	        if(book_isbn.equals(order.getBook_isbn())){
	        	
	        	Integer in=new Integer(order.getAccout());
	        	int inde=in.intValue();
	        	index=inde++;
	        }
		}
		return new Integer(index);
	}
	public List<Order> getMyOrder(String userName) {
		SqlSession session=Myutils.getSqlSession();
		List<Order> orderList=null;
		List<CarOrder> carOrderList=null;
		try {
			 Order order=new Order();
			 order.setUser_name(userName);
			 orderList=session.selectList("OrderNameSpace.getMyOrder", order);
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally{
			session.commit();
			Myutils.closeSqlSession();
		}
		return orderList;
	}
	
	private List<Order> getAllCarOrder(String userName) {
		SqlSession sqlSession= Myutils.getSqlSession();
		List<Order> orders=null;
		try {
			Order order=new Order();
			order.setUser_name(userName);
			orders=sqlSession.selectList("OrderNameSpace.getMyOrder", order);
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
		return orders;
	}
    public boolean deleteOrder(String OrderId,String userName) {
    	SqlSession sqlSession = Myutils.getSqlSession();
         try {
			Order order =new Order();
			order.setUser_name(userName);
			order.setOrder_id(OrderId);
			int index=sqlSession.delete("OrderNameSpace.deleteOrder", order);
		    if(index>0) {
		    	return true;
		    }
         } catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
    	return false;
    }
    
    public boolean saveAddress(Address address) {
    	SqlSession sqlSession = Myutils.getSqlSession();
        try {
			int index=sqlSession.insert("OrderNameSpace.saveAddress", address);
		    if(index>0) {
		    	return true;
		    }
        } catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
   	return false;
    }
    
    public Address getAddress(String userName) {
    	SqlSession sqlSession = Myutils.getSqlSession();
    	List<Address> addressList=null;
        try {
        	Address address=new Address();
        	address.setUserName(userName);
        	addressList=sqlSession.selectOne("OrderNameSpace.getAddress", address);
        	if(addressList.size()==0){
        		return null;
        	}else{
        		return addressList.get(0);
        	}
        } catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
    	return addressList.get(0);
    }
    
    public boolean changeAccout(String userName){
    	SqlSession sqlSession = Myutils.getSqlSession();
    	List<Order> orderList=null;
    	int acc=0;
		try {
			Order order=new Order();
			order.setUser_name(userName);
			orderList=sqlSession.selectList("OrderNameSpace.getMyOrder", order);
        	for(Order orderd:orderList){
        		Book book=new Book();
        		book.setAccount(orderd.getAccout());
        		book.setIsbn(orderd.getBook_isbn());
        		int inde=sqlSession.update("BookNameSpace.changeAccout", book);
        		if(inde>0){
        			acc++;
        		}
        	}
        	if(acc==orderList.size()){
        		return true;
        	}
        } catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
    	return false;
    }
    
	public static void main(String[] args){
		boolean address=new OrderService().changeAccout("4567@qq.com");
        System.out.println(address);
    }
}
