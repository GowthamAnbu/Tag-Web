package com.tag.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tag.dao.ComplaintDAO;
import com.tag.dao.ComplaintEmployeeDAO;
import com.tag.dao.DepartmentDAO;
import com.tag.dao.RegisteredUserDAO;
import com.tag.dao.StatusDAO;
import com.tag.dao.UserDAO;
import com.tag.model.Complaint;
import com.tag.model.ComplaintEmployee;
import com.tag.model.Department;
import com.tag.model.Employee;
import com.tag.model.RegisteredUser;
import com.tag.model.User;

@Controller
@RequestMapping("/complaint")
public class ComplaintController {
	UserDAO userDAO = new UserDAO();
	ComplaintDAO complaintDAO = new ComplaintDAO();
	DepartmentDAO departmentDAO = new DepartmentDAO();
	StatusDAO statusDAO = new StatusDAO();
	ComplaintEmployeeDAO complaintEmployeeDAO = new ComplaintEmployeeDAO();
	RegisteredUserDAO registeredUserDAO = new RegisteredUserDAO();
	@GetMapping
	public String complaint(@RequestParam("name") String name, HttpSession session,
			@RequestParam("departmentName") String departmentName, @RequestParam("doorNumber") String doorNumber,
			@RequestParam("streetName") String streetName, @RequestParam("pincode") String pincode,
			@RequestParam("details") String details,ModelMap modelMap) {
		User user = (User) session.getAttribute("USER");
		Complaint complaint = new Complaint();
		complaint.setName(name);
		complaint.setUser(user);
		Department department = new Department();
		department.setName(departmentName);
		department.setId(departmentDAO.getId(departmentName));
		complaint.setDepartment(department);
		complaint.setDoorNo(doorNumber);
		complaint.setStreetName(streetName);
		complaint.setPincode(pincode);
		complaint.setDetails(details);
		complaintDAO.save(complaint);
		complaintDAO.sendSimpleMail(user);
		List<RegisteredUser> userList=registeredUserDAO.findOne(user.getId());
		modelMap.addAttribute("USER_LIST",userList);
		return "/user.jsp";
	}

	@GetMapping("/ucomplaint")
	public String ucomplaint(@RequestParam("name") String name, @RequestParam("departmentName") String departmentName,
			@RequestParam("streetName") String streetName, @RequestParam("pincode") String pincode,
			@RequestParam("details") String details) {
		Complaint complaint = new Complaint();
		complaint.setName(name);
		Department department = new Department();
		department.setName(departmentName);
		department.setId(departmentDAO.getId(departmentName));
		complaint.setDepartment(department);
		complaint.setStreetName(streetName);
		complaint.setPincode(pincode);
		complaint.setDetails(details);
		complaintDAO.uSave(complaint);
		return "/";
	}
	
	@GetMapping("/employeeComplaint")
	public String employeeComplaint(@RequestParam("id")Integer complaintId,@RequestParam("employeeId")Integer employeeId,ModelMap modelMap,HttpSession session) {
		User user = userDAO.getUser(userDAO.getEmailId(employeeId));
		Employee employee = new Employee();
		employee.setUser(user);
		Complaint complaint = new Complaint();
		complaint.setId(complaintId);
		ComplaintEmployee complaintEmployee = new ComplaintEmployee();
		complaintEmployee.setComplaint(complaint);
		complaintEmployee.setEmployee(employee);
		complaintDAO.update(complaintId);
		complaintEmployeeDAO.save(complaintEmployee);
		if(complaintDAO.getUserId(complaintId)!=null){
		User complaintee=userDAO.getUser(userDAO.getEmailId(complaintDAO.getUserId(complaintId)));
		complaintEmployeeDAO.sendSimpleMail(complaintee, user);
		}
		User admin = (User)session.getAttribute("USER");
		String emailId = admin.getEmailId();
		String password = admin.getPassword();
		return "redirect:../login?emailId="+emailId+"&password="+password;
	}
	
	@GetMapping("/viewComplaints")
	public String findall(ModelMap modelMap) {
		List<Complaint> complaintList=complaintDAO.findAll();
//		List<Status> statusList=statusDAO.getStatus();
		modelMap.addAttribute("COMPLAINT_LIST",complaintList);
//		modelMap.addAttribute("STATUS_LIST",statusList);
		return "/viewComplaints.jsp";
	}
	
	@GetMapping("/findbyUserId")
	public String findbyUserId(ModelMap modelMap,HttpSession session) {
		User user = (User)session.getAttribute("USER");
		List<Complaint> complaintList=complaintDAO.findbyUserId(user.getId());
		modelMap.addAttribute("COMPLAINT_LIST",complaintList);
		return "/userHome.jsp";
	}
	
	@GetMapping("/getEmployee")
	public String getEmployee(ModelMap modelMap,HttpSession session){
		User user = (User)session.getAttribute("USER");
		List<Complaint> complaintList=complaintDAO.getEmployee(user.getId());
		modelMap.addAttribute("EMPLOYEE_LIST",complaintList);
		return "/employeeList.jsp";
	}
	
	@GetMapping("/viewComplaintStatus")
	public String viewComplaintStatus(ModelMap modelMap,HttpSession session){
		User user = (User)session.getAttribute("USER");
		List<Complaint> complaintList=complaintDAO.viewComplaintStatus(user.getId());
		modelMap.addAttribute("COMPLAINT_LIST",complaintList);
		return "/viewComplaintStatus.jsp";
	}
	
	@GetMapping("/changeStatus")
	public String changeStatus(ModelMap modelMap,@RequestParam("complaintId")String complaintId,@RequestParam("statusId")String statusId){
		complaintDAO.changeStatus(Integer.parseInt(complaintId), Integer.parseInt(statusId));
		List<Complaint> complaintList=complaintDAO.findAll();
		modelMap.addAttribute("COMPLAINT_LIST",complaintList);
		if(complaintDAO.getUserId(Integer.parseInt(complaintId))!=null){
			User complaintee=userDAO.getUser(userDAO.getEmailId(complaintDAO.getUserId(Integer.parseInt(complaintId))));
			Integer status = complaintDAO.getStatus(Integer.parseInt(complaintId));
			if(status!=1 && status!=3){
				complaintDAO.sendSimpleMail(complaintee, Integer.parseInt(complaintId), Integer.parseInt(statusId));
			}
			return "/viewComplaints.jsp";
		}
		return "/viewComplaints.jsp";
	}
}
