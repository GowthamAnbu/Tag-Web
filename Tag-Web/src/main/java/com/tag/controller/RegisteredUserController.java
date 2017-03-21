package com.tag.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tag.dao.RegisteredUserDAO;
import com.tag.model.RegisteredUser;
import com.tag.model.User;

@Controller
@RequestMapping("/RegisteredUser")
public class RegisteredUserController {
	RegisteredUserDAO registeredUserDAO = new RegisteredUserDAO();
	@GetMapping
	public String findOne(ModelMap modelMap,HttpSession session){
		User user=(User) session.getAttribute("USER");
		List<RegisteredUser> userList=registeredUserDAO.findOne(user.getId());
		modelMap.addAttribute("USER_LIST",userList);
		return "/user.jsp";	
	}

}
