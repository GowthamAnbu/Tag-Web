<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE PAGE</title>
</head>
	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
<jsp:include page="/layout/employeeHeader.jsp" />
<table class="table table-striped table-bordered table-hover">
	<thead>
		<td>USER_ID</td>
		<td>USER_NAME</td>
		<td>EMAIL_ID</td>
		<td>PHONE_NUMBER</td>
		<td>DESIGNATION</td>
		<td>RATING</td>
	</thead>
	<jstl:forEach var="i" items="${EMPLOYEE_LIST}" varStatus="invalid">
	<tr>
				<td>${i.user.id}</td>
				<td>${i.user.name}</td>
				<td>${i.user.emailId}</td>
				<td>${i.user.phoneNumber}</td>
				<td>${i.user.role.name}</td>
				<jstl:set var="role" value="${i.rating}" />
				<td><jstl:choose>
					<jstl:when test="${role==0}">
				     <p class="text-primary">no ratings yet</p>
					</jstl:when>
					<jstl:otherwise>
					<td>${i.rating}</td>
				 	</jstl:otherwise>
					</jstl:choose>
				</td>
	</tr>
	</jstl:forEach>
</table>
<!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../js/tether.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="../js/mdb.min.js"></script>
</body>
</html>