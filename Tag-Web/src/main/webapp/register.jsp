<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTRATION FORM</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</head>
<body>
<div style="width:300px; margin:0 auto;margin-top: 5%">
<form action="/register">
	NAME:<input type="text" name="name" class="form-control" required>
	GENDER:<input type="text" name="gender" class="form-control" required placeholder="M/F">
	EMAIL ID:<input type="text" name="emailId" class="form-control" required>
	PASSWORD:<input type="password" name="password" class="form-control" required>
	PHONE NUMBER:<input type="text" name="phoneNumber" class="form-control" required>
	DOOR NO:<input type="text" name="doorNo" class="form-control" required>
	STREET NAME:<input type="text" name="streetName" class="form-control" required>
	PINCODE:<input type="text" name="pincode" class="form-control" required>
	<input type="submit" value="Register" class="btn-primary form-control">
</form>
${REGISTER_ERROR}
<div>
</body>
</html>