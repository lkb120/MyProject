package net.bookshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import net.book.entity.Book;
import net.book.entity.User;
import net.book.service.UserManagerService;

@Controller
public class UserManagerController {
	UserManagerService userManagerService = new UserManagerService();
	@RequestMapping("/showUser")
	public String showUser(@ModelAttribute("User") User user,Model model,HttpSession session) {
		List<User> userList=userManagerService.getAllUser();
		session.setAttribute("userList", userList);
		return "showUser";
	}
	@RequestMapping("/deleteUser")
	public String deleteUser(@ModelAttribute("User") User user,Model model) {
		return "deleteUser";
	}
	@RequestMapping("/deleteUsers")
    public String deleteBooks(@ModelAttribute("User") User user,Model model) {
		userManagerService.deleteUser(user);
    	return "deleteUser";
    }
	@RequestMapping("/userMan")
	public String userMan(){
		return "userManner";
	}
}
