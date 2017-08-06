package net.bookshop.controller;



import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.book.entity.Address;
import net.book.entity.Book;
import net.book.entity.Order;
import net.book.service.OrderService;
import net.book.service.ShowBookService;
import net.bookshop.form.BookForm;

@Controller
public class OrderController {
    ShowBookService showBookService=new ShowBookService();
    OrderService orderService= new OrderService();
	@RequestMapping("/addOrder")
	public String addOrder(@ModelAttribute("BookForm") BookForm bookForm,Model model,HttpSession session,@RequestParam String requestId,@RequestParam String userName){
		if(userName==null){
			return "login";
		}else{
			System.out.println(requestId);
			List<Order> orderList=orderService.getMyOrder(userName);
			List<Book> bookList=showBookService.getAllBook();
			Book newBook=null;
			Order newOrder=null;
			for(Book book:bookList) {
				if(requestId.equals(book.getIsbn())){
					newBook=book;
				    break;
				}
			}
			if(orderList.size()>0){
			for(Order order:orderList) {
				if(requestId.equals(order.getBook_isbn())&&userName.equals(order.getUser_name())){
					int inde=order.getAccout()+1;
					Double bookPrice=newBook.getPrice();
					order.setPrice(bookPrice*inde);
					order.setAccout(inde);
					newOrder=order;
				}
			}
			}
			if(newOrder==null||orderList.size()==0) {
				newOrder=new Order();
				newOrder.setBook_isbn(newBook.getIsbn());
				newOrder.setBook_name(newBook.getName());
				newOrder.setPrice(newBook.getPrice());
				newOrder.setUnitPrice(newBook.getPrice());
				newOrder.setUser_name(userName);
				newOrder.setAccout(new Integer("1"));
				orderList.add(newOrder);
			}
			System.out.println(newOrder.getBook_name()+"::"+newOrder.getAccout()+"::"+newOrder.getPrice());
			orderService.addOrder(newOrder);
			session.setAttribute("orderList", orderList);
			return "index";
		}
		
	}
	
	@RequestMapping("/mycar")
	public String myCar(@RequestParam String userName,HttpSession session) {
		List<Order> orderList=orderService.getMyOrder(userName);
		session.setAttribute("orderList", orderList);
		Double total=total(orderList);
		int accout=getAccout(orderList);
		session.setAttribute("total", total);
		session.setAttribute("accout", accout);
		return "mycar";
	}
	@RequestMapping("/deleteCarShop")
    public String deleteCarBook(@RequestParam String orderId,@RequestParam String userName,HttpSession session) {
		boolean bool=orderService.deleteOrder(orderId,userName);
		if(bool){
			return myCar(userName,session);
		}
    	return "mycar";
    }
	@RequestMapping("/dealOrder")
	public String dealOrder(HttpSession session,@RequestParam String userName)throws Exception
	{         Address address=null;
		   try {
			   if(orderService.getAddress(userName)!=null){
				   address=orderService.getAddress(userName);
			   }
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("address",address);
		return "order";
	}
	 
	@RequestMapping(value="/addAddress",method=RequestMethod.POST)
	@ResponseBody
	public Address addAddress(@RequestBody Address address) {
		boolean bool=orderService.saveAddress(address);
		System.out.println(bool);
    	return address;
    }
	
	@RequestMapping(value="/payOrder")
	public String payOrder(@RequestParam String userName) {
		boolean bool=orderService.changeAccout(userName);
		System.out.println(bool);
		return "finish";
	}
	private Double total(List<Order> orderList) {
		Double totals=(double) 0;
		for(Order order:orderList){
			totals+=order.getPrice();
		}
		return totals;
	}
	private int getAccout(List<Order> orderList) {
		int totals= 0;
		for(Order order:orderList){
			totals+=order.getAccout();
		}
		return totals;
	}
}
