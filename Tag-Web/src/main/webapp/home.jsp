<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
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
		<td>USER ID</td>
		<td>DEPARTMENT</td>
		<td>DOOR NUMBER</td>
		<td>STREET NAME</td>
		<td>PINCODE</td>
		<td>DETAILS</td>
		<td>ACTION</td>
	</thead>
	<jstl:forEach var="i" items="${COMPLAINT_LIST}" varStatus="invalid">
	<tr>
				<td>${i.id}</td>
				<td>${i.name}</td>
				<td><jstl:set var="userId" value="${i.user.id}" />
					<jstl:set var="noUser" value="${0}" />
					<jstl:choose>
						<jstl:when test="${userId==noUser}">
							<p class="text-success">anonymous complaint</p>
						</jstl:when>
						<jstl:otherwise>
							${i.user.id}
						</jstl:otherwise>
					</jstl:choose></td>
				<td><jstl:set var="departmentId" value="${i.department.id}" />
					<jstl:set var="metro" value="${1}" />
					<jstl:choose>
						<jstl:when test="${departmentId==metro}">
							<p>Metro</p>
						</jstl:when>
						<jstl:otherwise>
							${i.department.id}
						</jstl:otherwise>
					</jstl:choose></td>
				<td><jstl:set var="userId" value="${i.user.id}" />
					<jstl:set var="noUser" value="${0}" />
					<jstl:choose>
						<jstl:when test="${userId==noUser}">
							<p class="text-success">anonymous complaint</p>
						</jstl:when>
						<jstl:otherwise>
							${i.doorNo}
						</jstl:otherwise>
					</jstl:choose></td>
				<td>${i.streetName}</td>
				<td>${i.pincode}</td>
				<td>${i.details}</td>
				<td><a href="../employee/getWorker?id=${i.id}">Assign Employee</a></td>
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