package net.bookshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.book.entity.Order;
import net.book.entity.UserOrder;
import net.book.service.OrderManagerService;

@Controller
public class OrderMannagerController {
	OrderManagerService orderManagerService=new OrderManagerService();
	@RequestMapping("/showOrder")
	public String orderMan(HttpSession session) {
		List<UserOrder> userOrderList=orderManagerService.getUserOrderList();
		session.setAttribute("userOrders",userOrderList);
		return "showOrder";
	}
	@RequestMapping("/showOrders")
	public String orderMans(HttpSession session,@RequestParam String userName){
		List<Order> orders=orderManagerService.getOrders(userName);
		session.setAttribute("orders", orders);
		return "showOrders";
	}
}
