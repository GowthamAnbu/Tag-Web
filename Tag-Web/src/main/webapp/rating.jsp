<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RATING PAGE</title>
<script type="text/javascript">
	function myFunction() {
		var e = document.getElementById("r");
		var ratingId = e.options[e.selectedIndex].value;
		 var id=<%=request.getParameter("employeeId")%>;
		/* alert("../employee/rating?employeeId="+id+"&ratingId="+ratingId); */
		document.location.href = "../employee/rating?employeeId="+id+"&ratingId="+ratingId
	}
</script>
</head>
<body>
<jsp:include page="/layout/header.jsp" />
<table class="table table-striped table-bordered table-hover">
	<thead>
		<td>ID</td>
		<td>RATING</td>
		<td>ACTION</td>
	</thead>
	<tr>
				<td><input type=number value=<%=request.getParameter("employeeId")%> readonly="readonly" id="employeeId"></input></td>
				<td>
					<select id="r">
					<option value="1">good</option>
					<option value="2">average</option>
					<option value="3">poor</option>
					</select>
				</td>
				<td>
				<button onclick="myFunction()" class="btn btn-md btn-danger"> UPDATE</button>
</td>
	</tr>
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