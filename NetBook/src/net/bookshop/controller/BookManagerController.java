package net.bookshop.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import net.book.entity.Book;
import net.book.service.BookManagerService;
import net.book.service.ShowBookService;

@Controller
public class BookManagerController {
	ShowBookService showBookService=new ShowBookService();
	BookManagerService bookManagerService=new BookManagerService();
    @RequestMapping("/showBook")
	public String showBook(@ModelAttribute("Book") Book book,Model model,HttpSession session) {
    	List<Book> bookList=showBookService.getAllBooks();
    	session.setAttribute("bookList", bookList);
    	return "showBook";
	}
    @RequestMapping("/addBook")
    public String addBook(@ModelAttribute("Book") Book book,Model model) {
    	return "addBook";
    }
    @RequestMapping("/addBooks")
    public String addbooks(@ModelAttribute("Book") Book book,Model model) {
    	System.out.println(book.getName());
    	bookManagerService.addBook(book);
    	return "addBook";
    }
    @RequestMapping("/deleteBook")
    public String deleteBook(@ModelAttribute("Book") Book book,Model model) {
    	return "deleteBook";
    }
    @RequestMapping("/deleteBooks")
    public String deleteBooks(@ModelAttribute("Book") Book book,Model model) {
    	bookManagerService.deleteBook(book);
    	return "deleteBook";
    }
}
