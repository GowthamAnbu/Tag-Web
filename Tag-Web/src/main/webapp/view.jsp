<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW</title>
</head>
	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
<body>
<jsp:include page="/layout/adminHeader.jsp" />
<table class="table table-striped table-bordered table-hover">
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
				<td><jstl:set var="gender" value="${i.gender}" />
					<jstl:set var="male" value="M" />
					<jstl:set var="female" value="F" />
					<jstl:choose>
						<jstl:when test="${gender==male}">
							<p>MALE</p>
						</jstl:when>
						<jstl:when test="${gender==female}">
							<p>FEMALE</p>
						</jstl:when>
						<jstl:otherwise>
							${i.gender}
						</jstl:otherwise>
					</jstl:choose></td>
				<td>${i.emailId}</td>
				<td>${i.phoneNumber}</td>
				<td><jstl:set var="role" value="${i.role.id}" />
					<jstl:set var="employee" value="${1}" />
					<jstl:set var="user" value="${2}" />
					<jstl:choose>
						<jstl:when test="${role==employee}">
							<p class="text-primary">EMPLOYEE</p>
						</jstl:when>
						<jstl:when test="${role==user}">
							<p class="text-info">USER</p>
						</jstl:when>
						<jstl:otherwise>
							${i.role.id}
						</jstl:otherwise>
					</jstl:choose></td>
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