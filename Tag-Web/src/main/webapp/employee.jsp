<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE PAGE</title>
</head>
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>-->
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- NAV BAR START-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- NAV BAR END -->
<body>
<nav class="navbar navbar-default">
  <ul class="nav navbar-nav">
    <li  class="nav-item"><a class="nav-link" href="../employee">HOME</a></li>
    <li  class="nav-item"><a class="nav-link" href="../employee/findByEmployeeId">VIEW COMPLAINTS</a></li>
  </ul>
  <ul class="nav navbar-nav navbar-right">
      <li><a href="../logout"> Logout</a></li>
    </ul>
</nav>
<table class="table table-hover">
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
</body>
</html>