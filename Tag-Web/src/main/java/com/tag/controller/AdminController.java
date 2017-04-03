package com.tag.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tag.dao.ComplaintDAO;
import com.tag.dao.EmployeeDetailDAO;
import com.tag.model.Complaint;
import com.tag.util.MailUtil;

@Controller
@RequestMapping("/admin")
public class AdminController {
	EmployeeDetailDAO employeeDetailDAO = new EmployeeDetailDAO();
	ComplaintDAO complaintDAO = new ComplaintDAO();
	@GetMapping
	public String findassigned(ModelMap modelMap) {
		List<Complaint> complaintList=complaintDAO.findassigned();
		modelMap.addAttribute("COMPLAINT_LIST",complaintList);
		return "home.jsp";
	}
	
	@GetMapping("/send")
	public String send(@RequestParam("table")String table) {
		System.out.println(table);
		MailUtil.sendHtmlMail(table);
		return "redirect:/employee/adminReport";
	}
	
	@GetMapping("/emailSend")
	public String emailSend() {
		employeeDetailDAO.trackingWork();
		return "redirect:/employee/adminReport";
	}
}
