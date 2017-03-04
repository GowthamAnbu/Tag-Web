package com.tag.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tag.dao.ComplaintEmployeeDAO;
import com.tag.dao.UserDAO;
import com.tag.model.User;

@Controller
@RequestMapping("/rating")
public class RatingController {
	ComplaintEmployeeDAO complaintEmployeeDAO = new ComplaintEmployeeDAO();
	UserDAO userDAO = new UserDAO();
	@GetMapping
	public String rating(HttpSession session,ModelMap modelMap){
		User user = (User) session.getAttribute("USER");
		List<Integer> employeeList = complaintEmployeeDAO.getEmployeeId(user.getId());
		/*User employee=userDAO.getUser(employeeId);
		System.out.println(employee);*/
		modelMap.addAttribute("EMPLOYEE_LIST", employeeList);
		return "/rating.jsp";
	}
}
