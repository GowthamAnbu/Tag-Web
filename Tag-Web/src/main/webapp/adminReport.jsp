<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REPORT</title>
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
							<p class="text-muted">nill ratings</p>
						</jstl:when>
						<jstl:otherwise>
							${i.rating}
						</jstl:otherwise>
					</jstl:choose></td>
				<td><jstl:set var="complaints" value="${i.complaintsHandled}" /> 
				<jstl:set var="noComplaints" value="${0}" /> <jstl:choose>
						<jstl:when test="${complaints==noComplaints}">
							<p class="text-primary">nill complaints</p>
						</jstl:when>
						<jstl:otherwise>
							${i.complaintsHandled}
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