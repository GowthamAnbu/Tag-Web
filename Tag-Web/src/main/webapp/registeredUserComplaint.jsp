<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COMPLAINT REGISTRATION FORM</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<body>
<!-- <div style="width:300px; margin:0 auto;margin-top: 5%"> -->
<div class="container col-sm-3">
<form action="/complaint">
	COMPLAINT NAME:<input type="text" name="name" class="form-control" required>
	DEPARTMENT NAME:
	<select class="form-control" name="departmentName" id="departmentName">
		<option value="METRO">METRO</option>
	</select>
	DOOR NUMBER:<input type="text" name="doorNumber" class="form-control" required>
	STREET NAME:<!-- <input type="text" name="streetName" class="form-control" required> -->
	<select class="form-control" name="streetName">
		<option value="street 1">street 1</option>
		<option value="street 2">street 2</option>
		<option value="street 3">street 3</option>
		<option value="street 4">street 4</option>
		<option value="street 5">street 5</option>
		<option value="street 6">street 6</option>
		<option value="street 7">street 7</option>
		<option value="street 8">street 8</option>
		<option value="street 9">street 9</option>
		<option value="street 10">street 10</option>
		<option value="street 11">street 11</option>
		<option value="street 12">street 12</option>
		<option value="street 13">street 13</option>
		<option value="street 14">street 14</option>
		<option value="street 15">street 15</option>
	</select>
	PINCODE:<!-- <input type="text" name="pincode" class="form-control" required> -->
	<select class="form-control" name="pincode">
		<option value="600004">600004</option>
	</select>
	DETAILS:<input  class="form-control" type="TextArea" name="details">
	<!-- <input type="submit" value="submit" class="btn-primary form-control"> -->
	<div class="btn-block btn-group">
	<input type="submit" value="Register" class="form-control btn-outline-primary">
	<input type="reset" value="clear" class="form-control btn-outline-primary">
	</div>
${REGISTER_ERROR}
<div>
</body>
</html>