package net.bookshop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import back.book.shop.Service.MannagerService;
import net.book.entity.Mannager;

@Controller
public class MannagerController {
     MannagerService managerService=new MannagerService();
	@RequestMapping("/manlogin")
	public String MannagerLogin(@ModelAttribute("Mannager") Mannager mannager,Model model,HttpSession session) {
		model.addAttribute(mannager);
		session.setAttribute("Logonname", null);
		return "manlogin";
	}
	@RequestMapping("/mainMan")
	public String Manna() {
		return "mannager";
	}
	
	@RequestMapping("/manedit")
	public String MannagerEdit(@ModelAttribute("Mannager") Mannager mannager,HttpSession session) {
		
		
		if(managerService.search(mannager)) {
			
			session.setAttribute("Logonname", mannager.getName());
			return "mannager";
		}else {
			return "manlogin";
	    }
	}
}
