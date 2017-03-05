<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<!-- NAV BAR START-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- NAV BAR END -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW</title>
</head>
<body>
<nav class="navbar navbar-default">
  <ul class="nav navbar-nav">
    <li><a href="../admin">HOME</a></li>
    <li><a href="view">VIEW EMPLOYEE</a></li>
    <li><a class="nav-link" href="../complaint/viewComplaints">VIEW COMPLAINTS</a></li>
    <li><a href="../registerEmployee.jsp">REGISTER</a></li>
  </ul>
  <ul class="nav navbar-nav navbar-right">
      <li><a href="../logout"> Logout</a></li>
    </ul>
</nav>
<table class="table table-hover">
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
</body>
</html>