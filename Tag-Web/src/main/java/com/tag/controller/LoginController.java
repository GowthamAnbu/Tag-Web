package com.tag.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tag.dao.ComplaintDAO;
import com.tag.dao.EmployeeDetailDAO;
import com.tag.dao.RegisteredUserDAO;
import com.tag.dao.UserDAO;
import com.tag.model.Employee;
import com.tag.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {
	UserDAO userDAO = new UserDAO();
	EmployeeDetailDAO employeeDetailDAO = new EmployeeDetailDAO();
	ComplaintDAO complaintDAO = new ComplaintDAO();
	RegisteredUserDAO registeredUserDAO = new RegisteredUserDAO();
	@GetMapping
	public String login(@RequestParam("emailId")String emailId,@RequestParam("password")String password,ModelMap modelMap,HttpSession session){
		String returnStatement=null;
		User user = new User();
		user.setEmailId(emailId);
		user.setPassword(password);
		try {
			if(!userDAO.isValidEmailId(emailId)){
				throw new Exception("Invalid Email Id");
			}
			else if(!userDAO.isValidPassword(emailId, password)){
				throw new Exception("Invalid Password");
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
		if(role==2){
			/*List<RegisteredUser> userList=registeredUserDAO.findOne(user.getId());
			modelMap.addAttribute("USER_LIST",userList);*/
			returnStatement="redirect:/RegisteredUser";	
		}
		else if(role==1){
			int designation = employeeDetailDAO.getDesignation(employee.getUser().getId());
			if(designation==5){
				/*List<User> userList=userDAO.findAll();
				modelMap.addAttribute("USER_LIST",userList);
				List<Complaint> complaintList=complaintDAO.findassigned();
				modelMap.addAttribute("COMPLAINT_LIST",complaintList);*/
				/*returnStatement= "/admin.jsp";*/
				returnStatement= "redirect:/admin";
			}
			else{
				List<Employee> employeeList=employeeDetailDAO.findAll(user.getId());
				modelMap.addAttribute("EMPLOYEE_LIST",employeeList);
				returnStatement="redirect:/employee";
			}
		}
		return returnStatement;
	}

}
