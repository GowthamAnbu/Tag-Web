package com.tag.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tag.dao.RegisteredUserDAO;
import com.tag.dao.UserDAO;
import com.tag.model.RegisteredUser;
import com.tag.model.User;

@Controller
@RequestMapping("/register")
public class RegisterController {
	UserDAO userDAO = new UserDAO();
	RegisteredUserDAO registeredUserDAO = new RegisteredUserDAO();
	@GetMapping
	public String register(@RequestParam("name") String name, @RequestParam("gender") String gender,
			@RequestParam("emailId") String emailId, @RequestParam("password") String password,
			@RequestParam("phoneNumber") String phoneNumber, @RequestParam("doorNo") String doorNo,
			@RequestParam("streetName") String streetName,@RequestParam("pincode")String pincode,ModelMap modelMap) {
		User user = new User();
		user.setName(name);
		user.setGender(gender);
		user.setEmailId(emailId);
		user.setPassword(password);
		user.setPhoneNumber(phoneNumber);
		RegisteredUser registeredUser = new RegisteredUser();
		registeredUser.setUser(user);
		registeredUser.setDoorNo(doorNo);
		registeredUser.setStreetName(streetName);
		registeredUser.setPincode(pincode);
		if(userDAO.isValidEmailId(emailId)){
			try {
				throw new Exception("Email Id already Exists");
			} catch (Exception e) {
				modelMap.addAttribute("REGISTER_ERROR", e.getMessage());
				return "/register.jsp";
			}
		}
		userDAO.save(user);
		registeredUser.getUser().setId(userDAO.getUserId(emailId));
		registeredUserDAO.save(registeredUser);
		return "/index.jsp";
	}
}
