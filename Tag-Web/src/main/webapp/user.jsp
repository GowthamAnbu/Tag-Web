<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COMPLAINT REGISTRATION PAGE</title>
	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous"> -->
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<body>
<jsp:include page="/layout/header.jsp" />
<table class="table table-striped table-bordered table-hover">
	<thead>
		<td>ID</td>
		<td>NAME</td>
		<td>GENDER</td>
		<td>EMAIL_ID</td>
		<td>PHONE_NUMBER</td>
		<td>DOOR_NUMBER</td>
		<td>STREET_NAME</td>
		<td>PINCODE</td>
	</thead>
	<jstl:forEach var="i" items="${USER_LIST}" varStatus="invalid">
	<tr>
				<td>${i.user.id}</td>
				<td>${i.user.name}</td>
				<td><jstl:set var="gender" value="${i.user.gender}" />
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
							${i.user.gender}
						</jstl:otherwise>
					</jstl:choose></td>
				<td>${i.user.emailId}</td>
				<td>${i.user.phoneNumber}</td>
				<td>${i.doorNo}</td>
				<td>${i.streetName}</td>
				<td>${i.pincode}</td>
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