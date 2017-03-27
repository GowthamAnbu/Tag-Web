<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REPORT</title>
<!-- NAV BAR START-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- NAV BAR END -->
</head>
<body>
<nav class="navbar navbar-default">
	<ul class="nav navbar-nav">
		<li class="nav-item"><a class="nav-link" href="../admin">HOME</a></li>
		<li><a class="nav-link" href="../view">VIEW EMPLOYEE</a></li>
		<li><a class="nav-link" href="../complaint/viewComplaints">VIEW
				COMPLAINTS</a></li>
		<li><a class="nav-link" href="../employee/adminReport">VIEW REPORT</a></li>
		<li><a class="nav-link" href="../registerEmployee.jsp">REGISTER</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="../logout"> Logout</a></li>
	</ul>
	</nav>
	<table class="table table-hover">
		<thead>
			<td>DEPARTMENT NAME</td>
			<td>EMPLOYEE ID</td>
			<td>DESIGNATION</td>
			<td>RATING</td>
			<td>COMPLAINTS HANDLED</td>
		</thead>
		<jstl:forEach var="i" items="${REPORT_LIST}" varStatus="invalid">
			<tr>
				<td>${i.departmentName}</td>
				<td>${i.employeeId}</td>
				<td>${i.designationName}</td>
				<td><jstl:set var="ratingId" value="${i.rating}" /> 
				<jstl:set var="noRating" value="${0}" /> <jstl:choose>
						<jstl:when test="${ratingId==noRating}">
							<p class="text-danger">no ratings yet</p>
						</jstl:when>
						<jstl:otherwise>
							${i.rating}
						</jstl:otherwise>
					</jstl:choose></td>
				<td><jstl:set var="complaints" value="${i.complaintsHandled}" /> 
				<jstl:set var="noComplaints" value="${0}" /> <jstl:choose>
						<jstl:when test="${complaints==noComplaints}">
							<p class="text-danger">no complaints yet</p>
						</jstl:when>
						<jstl:otherwise>
							${i.complaintsHandled}
						</jstl:otherwise>
					</jstl:choose></td>
			</tr>
		</jstl:forEach>
		</table>
</body>
</html>