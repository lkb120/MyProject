package net.book.entity;

public class Order {
   private String order_id;
   private String user_id;
   private Integer accout;
   private Double unitPrice;
   private Double price;
   public int getAccout() {
	return accout;
}
public void setAccout(Integer accout) {
	this.accout = accout;
}
private String book_isbn;
   private String book_name;
   private String user_name;
   public String getBook_name() {
   return book_name;
}
public void setBook_name(String book_name) {
	this.book_name = book_name;
}

public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
public String getOrder_id() {
	return order_id;
}
public void setOrder_id(String order_id) {
	this.order_id = order_id;
}
public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public String getBook_isbn() {
	return book_isbn;
}
public void setBook_isbn(String book_isbn) {
	this.book_isbn = book_isbn;
}
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
public Double getUnitPrice() {
	return unitPrice;
}
public void setUnitPrice(Double unitPrice) {
	this.unitPrice = unitPrice;
}
}
