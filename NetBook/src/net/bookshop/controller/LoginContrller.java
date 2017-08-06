package net.bookshop.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import net.book.entity.Book;
import net.book.entity.User;
import net.book.service.LoginService;
import net.book.service.ShowBookService;
import net.bookshop.form.BookForm;
import net.bookshop.form.LoginForm;

@Controller
public class LoginContrller {
    private LoginService login=new LoginService();
    private ShowBookService showBookService= new ShowBookService();
	@RequestMapping("/login")
	public String demo(@ModelAttribute("LoginForm") LoginForm loginform,Model model,HttpSession session) {
		model.addAttribute(loginform);
		session.setAttribute("errLogin", null);
		session.setAttribute("user", null);
		return "login";
	}
	
	@RequestMapping("/edit")
	public String demo2(@ModelAttribute("LoginForm") LoginForm loginForm,Model model,@ModelAttribute("BookForm") BookForm bookForm,HttpSession session) throws UnsupportedEncodingException {
		String name=loginForm.getName();
		String password=loginForm.getPassWord();
		List<Book> books=showBookService.getAllBook();
		session.setAttribute("books", books);
		session.setAttribute("user",name);
		session.setAttribute("errLogin",null);
		model.addAttribute(bookForm);
		String returns="index";
		System.out.println(name+":::"+password);
		if(!login.isHasUser(name, password)){
			session.setAttribute("errLogin", "用户名或者密码错误");
			session.setAttribute("user",null);
			returns="login";
		}
		return returns;
	}
	@RequestMapping("")
	public String index(HttpSession session) {
		List<Book> books=showBookService.getAllBook();
		session.setAttribute("books", books);
		return "index";
	}
}
