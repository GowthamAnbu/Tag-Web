package com.tag.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tag.dao.ComplaintDAO;
import com.tag.dao.EmployeeDetailDAO;
import com.tag.model.Complaint;
import com.tag.model.Employee;
import com.tag.model.User;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	EmployeeDetailDAO employeeDetailDAO = new EmployeeDetailDAO();
	ComplaintDAO complaintDAO = new ComplaintDAO();
	@GetMapping
	public String employee(ModelMap modelMap,HttpSession session){
		User user = (User) session.getAttribute("USER");
		List<Employee> employeeList=employeeDetailDAO.findAll(user.getId());
		modelMap.addAttribute("EMPLOYEE_LIST",employeeList);
		return "/employee.jsp";
	}
	
	@GetMapping("/findByEmployeeId")
	public String findbyEmployeeId(ModelMap modelMap,HttpSession session){
		User user = (User) session.getAttribute("USER");
		List<Complaint> complaintList=complaintDAO.findbyEmployeeId(user.getId());
		modelMap.addAttribute("COMPLAINT_LIST",complaintList);
		return "/employeeComplaints.jsp";
	}
}
