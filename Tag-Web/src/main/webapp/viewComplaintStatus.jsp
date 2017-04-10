<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COMPLAINT STATUS</title>
</head>
<body>
<jsp:include page="/layout/header.jsp" />
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<td>ID</td>
			<td>NAME</td>
			<td>USER_ID</td>
			<td>DEPARTMENT_ID</td>
			<td>DOOR_NUMBER</td>
			<td>STREET_NAME</td>
			<td>PINCODE</td>
			<td>DETAILS</td>
			<td>REGISTERED TIME</td>
			<td>STATUS</td>
			<td>STATUS TIME</td>
			<td>ACTION</td>
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
				<td>${i.registeredTime}</td>
				<jstl:set var="status" value="${i.status.id}" />
				<jstl:set var="applied" value="${1}" />
				<jstl:set var="cancelled" value="${2}" />
				<jstl:set var="assigned" value="${3}" />
				<jstl:set var="finished" value="${4}" />
				<jstl:set var="declined" value="${5}" />
				<td><jstl:choose>
						<jstl:when test="${status==applied}">
							<p class="text-primary">COMPLAINT HAS BEEN
								REGISTERED</p>
						</jstl:when>
						<jstl:when test="${status==cancelled}">
							<p class="text-warning">COMPLAINT HAS BEEN
								CANCELLED</p>
						</jstl:when>
						<jstl:when test="${status==assigned}">
							<p class="text-info">COMPLAINT HAS BEEN ASSIGNED TO
								EMPLOYEE</p>
						</jstl:when>
						<jstl:when test="${status==finished}">
							<p class="text-success">WORK IS FINISHED</p>
						</jstl:when>
						<jstl:when test="${status==declined}">
							<p class="text-danger">COMPLAINT HAS BEEN DECLINED
								DUE TO WRONG INFORMATION</p>
						</jstl:when>
						<jstl:otherwise>
							<p class="text-danger">ERROR</p>
						</jstl:otherwise>
					</jstl:choose>
					<td>${i.statusTime}</td>
				<%-- <td>${i.status.id}</td> --%>
				<td><jstl:choose>
						<jstl:when test="${status==applied}"> 
						<a href="../admin/cancel?complaintId=${i.id}" class="btn btn-danger" role="button">cancel</a></td>
						</jstl:when>
					</jstl:choose>
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

