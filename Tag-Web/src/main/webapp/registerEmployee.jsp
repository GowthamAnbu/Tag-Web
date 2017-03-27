<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE REGISTRATION FORM</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</head>
<body>
<div style="width:300px; margin:0 auto;margin-top: 5%">
<form action="/register/adminRegister">
	NAME:<input type="text" name="name" class="form-control" required>
	GENDER:<!-- <input type="text" name="gender" class="form-control" required placeholder="M/F"> -->
	<select class="form-control" name="gender">
		<option value="M">MALE</option>
		<option value="F">FEMALE</option>
	</select>
	EMAIL ID:<input type="email" name="emailId" class="form-control" required>
	PASSWORD:<input type="password" name="password" class="form-control" required>
	PHONE NUMBER:<!-- <input type="text" name="phoneNumber" class="form-control" required> -->
	<input type="text" name="phoneNumber" class="form-control" pattern="^[789]\d{9}$"  required>
	ROLE:<!-- <input type="number" name="roleId"> -->
	<select class="form-control" name="roleId">
		<option value="1">EMPLOYEE</option>
		<option value="2">REGISTERED_USER</option>
	</select>
	DEPARTMENT:<!-- <input type="number" name="departmentId">
 -->	<select class="form-control" name="departmentId">
		<option value="1">METRO</option>
	</select>
	DESIGNATION:<!-- <input type="number" name="designationId"> -->
	<select class="form-control" name="designationId">
		<option value="1">FIELD WORKER</option>
		<option value="2">SUPERWISER</option>
		<option value="3">ASSISSTANT MANAGER</option>
		<option value="4">MANAGER</option>
		<option value="5">ADMIN</option>
		<option value="6">REGIONAL OFFICER</option>
	</select>
	<!-- <input type="submit" value="Register" class="btn-primary form-control"> -->
	<div class="btn-block btn-group">
	<input type="submit" value="Register" class="form-control btn-outline-primary">
	<input type="reset" value="clear" class="form-control btn-outline-primary">
	</div>
</form>
${REGISTER_ERROR}
<div>
</body>
</html>