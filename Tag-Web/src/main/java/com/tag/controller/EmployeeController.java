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
import com.tag.dao.RatingDetailsDAO;
import com.tag.dto.Report;
import com.tag.model.Complaint;
import com.tag.model.Employee;
import com.tag.model.User;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	EmployeeDetailDAO employeeDetailDAO = new EmployeeDetailDAO();
	ComplaintDAO complaintDAO = new ComplaintDAO();
	RatingDetailsDAO ratingDetailDAO = new RatingDetailsDAO();
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
	
	@GetMapping("/rating")
	public String rating(@RequestParam("employeeId")String employeeId,@RequestParam("ratingId")String lrating,HttpSession session){
		User user = (User) session.getAttribute("USER");
		ratingDetailDAO.addRating(Integer.parseInt(employeeId), user.getId(), Integer.parseInt(lrating));
		return "redirect:../complaint/getEmployee";
	}
	
	@GetMapping("/adminReport")
	public String  adminReport(ModelMap modelMap){
		List<Report> adminReport = employeeDetailDAO.adminReport();
		modelMap.addAttribute("REPORT_LIST",adminReport);
		return"../adminReport.jsp";
	}
	
	@GetMapping("/getWorker")
	public String getWorker(ModelMap modelMap,@RequestParam("id")String id){
		List<Integer> workerList=employeeDetailDAO.getWorker();
		modelMap.addAttribute("WORKER_LIST",workerList);
		return "../assign.jsp?id="+id;
	}
}
