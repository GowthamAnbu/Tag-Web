<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE REGISTRATION FORM</title>
<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/layout/adminHeader.jsp" />
 <!--Form with header-->
<div class="card" style="width:300px; margin:0 auto;margin-top:3%">
    <div class="card-block">

        <!--Header-->
        <div class="form-header blue darken-2">
            <h3><i class="fa fa-user"></i> Register:</h3>
        </div>

        <!--Body-->
        <form class="form-inline" action="/register/adminRegister" method="get">
            <div class="md-form form-group">
                <i class="fa fa-user prefix"></i>
                <input type="text" id="name" name="name" class="form-control" required>
                <label for="name">Your name</label>
            </div>
            <div class="md-form form-group">
                <fielset class="form-group">
                <i class="fa fa-male prefix"></i>
                </fielset>
                <fielset class="form-group">
                    <select class="form-control" name="gender">
                        <option value="M">MALE</option>
                        <option value="F">FEMALE</option>
                    </select>
                </fielset>
            </div>
            <div class="md-form form-group">
                <i class="fa fa-envelope prefix"></i>
                <input type="email" id="emailId" name="emailId" class="form-control validate" required>
                <label for="emailId" data-error="invalid">Your email</label>
            </div>
            <div class="md-form form-group">
                <i class="fa fa-lock prefix"></i>
                <input type="password" id="password" name="password" class="form-control validate" required>
                <label for="password" data-error="invalid">Your password</label>
            </div>
             <div class="md-form form-group">
                <i class="fa fa-user prefix"></i>
                <input type="text" id="phoneNumber" name="phoneNumber" class="form-control" pattern="^[789]\d{9}$" required>
                <label for="phoneNumber">Your Phone number</label>
            </div>
            Role Of The Employee
            <fielset class="form-group">
                <select class="form-control" name="roleId">
                    <option value="1">EMPLOYEE</option>
                    <option value="2">REGISTERED_USER</option>
                </select>
            </fielset>
            Department Of The Employee
            <fielset class="form-group">
                <select class="form-control" name="departmentId">
                    <option value="1">METRO</option>
                </select>
            </fielset>
            Designation Of The Employee
            <fielset class="form-group">
                <select class="form-control" name="designationId">
                    <option value="1">FIELD WORKER</option>
                    <option value="2">SUPERWISER</option>
                    <option value="3">ASSISSTANT MANAGER</option>
                    <option value="4">MANAGER</option>
                    <option value="5">ADMIN</option>
                    <option value="6">REGIONAL OFFICER</option>
                </select>
            </fielset>
            <p class="text-danger text-center">${REGISTER_ERROR}</p>
            <div class="text-center md-form form-group">
                <button class="btn btn-primary" type="submit">Submit</button>
                <button class="btn btn-primary" type="reset">Clear</button>
                <hr>
            </div>
        </form>
    </div>
</div>
<!--/Form with header-->
			
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
<!-- <div style="width:300px; margin:0 auto;margin-top: 5%">
<form action="/register/adminRegister">
	NAME:<input type="text" name="name" class="form-control" required>
	GENDER:<input type="text" name="gender" class="form-control" required placeholder="M/F">
	<select class="form-control" name="gender">
		<option value="M">MALE</option>
		<option value="F">FEMALE</option>
	</select>
	EMAIL ID:<input type="email" name="emailId" class="form-control" required>
	PASSWORD:<input type="password" name="password" class="form-control" required>
	PHONE NUMBER:<input type="text" name="phoneNumber" class="form-control" required>
	<input type="text" name="phoneNumber" class="form-control" pattern="^[789]\d{9}$"  required>
	ROLE:<input type="number" name="roleId">
	<select class="form-control" name="roleId">
		<option value="1">EMPLOYEE</option>
		<option value="2">REGISTERED_USER</option>
	</select>
	DEPARTMENT:<input type="number" name="departmentId">	<select class="form-control" name="departmentId">
		<option value="1">METRO</option>
	</select>
	DESIGNATION:<input type="number" name="designationId">
	<select class="form-control" name="designationId">
		<option value="1">FIELD WORKER</option>
		<option value="2">SUPERWISER</option>
		<option value="3">ASSISSTANT MANAGER</option>
		<option value="4">MANAGER</option>
		<option value="5">ADMIN</option>
		<option value="6">REGIONAL OFFICER</option>
	</select>
	<input type="submit" value="Register" class="btn-primary form-control">
	<div class="btn-block btn-group">
	<input type="submit" value="Register" class="form-control btn-outline-primary">
	<input type="reset" value="clear" class="form-control btn-outline-primary">
	</div>
</form>
${REGISTER_ERROR}
<div> -->