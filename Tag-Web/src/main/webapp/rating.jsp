<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
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
<table class="table table-hover">
	<thead>
		<td>ID</td>
		<td>RATING</td>
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
</body>
</html>