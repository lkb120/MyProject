package net.book.repository;

import java.util.List;

import net.book.entity.Order;
import net.book.entity.UserOrder;

public interface OrderManagerIml {

	List<Order> getUserOrders();
}
