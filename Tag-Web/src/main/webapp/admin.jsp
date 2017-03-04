<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE REGISTRATION PAGE</title>
</head>
<body>
<a href="registerEmployee.jsp">REGISTER EMPLOYEE</a>
<table>
	<thead>
		<td>ID</td>
		<td>NAME</td>
		<td>GENDER</td>
		<td>EMAIL_ID</td>
		<td>PHONE_NUMBER</td>
		<td>ROLE_ID</td>
	</thead>
	<jstl:forEach var="i" items="${USER_LIST}" varStatus="invalid">
	<tr>
				<td>${i.id}</td>
				<td>${i.name}</td>
				<td>${i.gender}</td>
				<td>${i.emailId}</td>
				<td>${i.phoneNumber}</td>
				<td>${i.role.id}</td>
	</tr>
	</jstl:forEach>
</table>
<table>
	<thead>
		<td>ID</td>
		<td>NAME</td>
		<td>USER_ID</td>
		<td>DEPARTMENT_ID</td>
		<td>DOOR_NUMBER</td>
		<td>STREET_NAME</td>
		<td>PINCODE</td>
		<td>DETAILS</td>
	</thead>
	<jstl:forEach var="i" items="${COMPLAINT_LIST}" varStatus="invalid">
	<tr>
				<td>${i.id}</td>
				<td>${i.name}</td>
				<td>${i.user.id}</td>
				<td>${i.department.id}</td>
				<td>${i.doorNo}</td>
				<td>${i.streetName}</td>
				<td>${i.pincode}</td>
				<td>${i.details}</td>
				<td><a href="assign.jsp?id=${i.id}">Assign Employee</a></td>
	</tr>
	</jstl:forEach>
</table>
</body>
</html>