<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CHANGE ROLE</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</head>
<script type="text/javascript">
	function myFunction() {
		var e = document.getElementById("s");
		var statusId = e.options[e.selectedIndex].value;
		 var id=<%=request.getParameter("complaintId")%>;
		/* alert("../complaint/changeStatus?complaintId="+id+"&statusId="+statusId); */
		document.location.href = "../complaint/changeStatus?complaintId=" + id
				+ "&statusId=" + statusId;
	}
</script>
<body>
<table class="table table-hover">
<thead>
<td>COMPLAINT ID</td>
<td>STATUS</td>
<td>ACTION</td>
</thead>
<tr>
<td>
<input type=number value=<%=request.getParameter("complaintId")%> readonly="readonly" id="complaintId"></input>
</td>
<td>
<select id="s">
<option value=4>FINISHED</option>
<option value=5>DECLINED</option>
</select>
</td>
<td>
<button onclick="myFunction()" class="btn btn-md btn-danger"> UPDATE</button>
</td>
</tr>
</table>
</body>
</html>