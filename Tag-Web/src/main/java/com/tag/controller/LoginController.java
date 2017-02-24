package com.tag.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tag.dao.EmployeeDetailDAO;
import com.tag.dao.UserDAO;
import com.tag.model.Employee;
import com.tag.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {
	UserDAO userDAO = new UserDAO();
	EmployeeDetailDAO employeeDetailDAO = new EmployeeDetailDAO();
	@GetMapping
	public String login(@RequestParam("emailId")String emailId,@RequestParam("password")String password,ModelMap modelMap,HttpSession session){
		String returnStatement=null;
		User user = new User();
		user.setEmailId(emailId);
		user.setPassword(password);
		try {
			if(!userDAO.isValidEmailId(emailId)){
				throw new Exception("INVALID EMAIL ID");
			}
			else if(!userDAO.isValidPassword(emailId, password)){
				throw new Exception("INVALID PASSWORD");
			}
		} catch (Exception e) {
			modelMap.addAttribute("LOGIN_ERROR", e.getMessage());
			return "/";
		}
		user=userDAO.getUser(emailId);
		session.setAttribute("USER", user);
		Employee employee = new Employee();
		employee.setUser(user);
		int role = userDAO.getRole(emailId);
		System.out.println(role);
		if(role==2){
			returnStatement="/user.jsp";	
		}
		else if(role==1){
			int designation = employeeDetailDAO.getDesignation(employee.getUser().getId());
			if(designation==5){
				returnStatement= "/admin.jsp";
			}
			else{
				returnStatement="/employee.jsp";
			}
		}
		return returnStatement;
	}

}