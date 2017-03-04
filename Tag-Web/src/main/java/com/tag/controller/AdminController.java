package com.tag.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tag.dao.ComplaintDAO;
import com.tag.model.Complaint;

@Controller
@RequestMapping("/admin")
public class AdminController {
	ComplaintDAO complaintDAO = new ComplaintDAO();
	@GetMapping
	public String findassigned(ModelMap modelMap) {
		List<Complaint> complaintList=complaintDAO.findassigned();
		modelMap.addAttribute("COMPLAINT_LIST",complaintList);
		return "home.jsp";
	}
	
	
}
