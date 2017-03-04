package com.tag.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tag.dao.UserDAO;
import com.tag.model.User;

@Controller
@RequestMapping("/view")
public class ViewController {
	@GetMapping
	public String view(ModelMap modelMap) {
	UserDAO userDAO = new UserDAO();
	List<User> userList=userDAO.findAll();
	modelMap.addAttribute("USER_LIST",userList);
	return "view.jsp";
	}

}
