<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW COMPLAINTS</title>
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
		<li><a class="nav-link" href="../registerEmployee.jsp">REGISTER</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="../logout"> Logout</a></li>
	</ul>
	</nav>
	<table class="table table-hover">
		<thead>
			<td>ID</td>
			<td>NAME</td>
			<td>USER_ID</td>
			<td>DEPARTMENT_ID</td>
			<td>DOOR_NUMBER</td>
			<td>STREET_NAME</td>
			<td>PINCODE</td>
			<td>DETAILS</td>
			<td>STATUS</td>
		</thead>
		<jstl:forEach var="i" items="${COMPLAINT_LIST}" varStatus="invalid">
			<tr>
				<td>${i.id}</td>
				<td>${i.name}</td>
				<td><jstl:set var="userId" value="${i.user.id}" /> <jstl:set
						var="noUser" value="${0}" /> <jstl:choose>
						<jstl:when test="${userId==noUser}">
							<p class="text-danger">not a registered user</p>
						</jstl:when>
						<jstl:otherwise>
							${i.user.id}
						</jstl:otherwise>
					</jstl:choose></td>
				<%-- <td>${i.user.id}</td> --%>
				<td>${i.department.id}</td>
				<td>${i.doorNo}</td>
				<td>${i.streetName}</td>
				<td>${i.pincode}</td>
				<td>${i.details}</td>
				<jstl:set var="status" value="${i.status.id}" />
				<jstl:set var="applied" value="${1}" />
				<jstl:set var="cancelled" value="${2}" />
				<jstl:set var="assigned" value="${3}" />
				<jstl:set var="finished" value="${4}" />
				<jstl:set var="declined" value="${5}" />
				<td><jstl:choose>
						<jstl:when test="${status==applied}">
							<p class="text-primary bg-primary">COMPLAINT HAS BEEN
								REGISTERED</p>
						</jstl:when>
						<jstl:when test="${status==cancelled}">
							<p class="text-warning bg-warning">COMPLAINT HAS BEEN
								CANCELLED</p>
						</jstl:when>
						<jstl:when test="${status==assigned}">
							<p class="text-info bg-info">COMPLAINT HAS BEEN ASSIGNED TO
								EMPLOYEE</p>
						</jstl:when>
						<jstl:when test="${status==finished}">
							<p class="text-success bg-success">WORK IS FINISHED</p>
						</jstl:when>
						<jstl:when test="${status==declined}">
							<p class="text-danger bg-danger">COMPLAINT HAS BEEN DECLINED
								DUE TO WRONG INFORMATION</p>
						</jstl:when>
						<jstl:otherwise>
							<p class="text-danger">ERROR</p>
						</jstl:otherwise>
					</jstl:choose>
				<td>
					<%-- <td>${i.status.id}</td> --%>
			</tr>
		</jstl:forEach>
	</table>
</body>
</html>