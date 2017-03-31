<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COMPLAINT REGISTRATION FORM</title>
</head>
	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
<body>
<jsp:include page="/layout/header.jsp" />
<!--Form with header-->
<div class="card" style="width:300px; margin:0 auto;margin-top:3%">
    <div class="card-block">

        <!--Header-->
        <div class="form-header blue darken-2">
             <h3><i class="fa fa-lock"></i> Complaint</h3>
        </div>

        <!--Body-->
        <form class="form-inline" action="/complaint" method="get">
            <div class="md-form form-group">
                <i class="fa fa-user prefix"></i>
                <input type="text" id="name" name="name" class="form-control" required>
                <label for="name">Complaint Name</label>
            </div>
            <h5>Name of the Department:</h5>
            <fielset class="form-group">
                <select class="form-control" name="departmentName" id="departmentName">
                    <option value="METRO">METRO</option>
                </select>
            </fielset>
            <div class="md-form form-group">
                <i class="fa fa-user prefix"></i>
                <input type="number" id="doorNumber" name="doorNumber" class="form-control" required>
                <label for="doorNumber">Door Number</label>
            </div>
            <h5>Street name for the current Complaint</h5>
            <fielset class="form-group">
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
            </fielset>
            <h5>Pincode for fhe Complaint raised</h5>
            <fielset class="form-group">
                <select class="form-control" name="pincode">
                    <option value="600004">600004</option>
                </select>
            </fielset>
            <div class="md-form form-group">
                <i class="fa fa-pencil prefix"></i>
                <textarea type="text" id="details" name="details" class="md-textarea"></textarea>
                <label for="details">Details</label>
            </div>
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
<!-- <div style="width:300px; margin:0 auto;margin-top: 5%"> -->
<!-- <div class="container col-sm-3">
<form action="/complaint">
	COMPLAINT NAME:<input type="text" name="name" class="form-control" required>
	DEPARTMENT NAME:
	<select class="form-control" name="departmentName" id="departmentName">
		<option value="METRO">METRO</option>
	</select>
	DOOR NUMBER:<input type="text" name="doorNumber" class="form-control" required>
	STREET NAME:<input type="text" name="streetName" class="form-control" required>
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
	PINCODE:<input type="text" name="pincode" class="form-control" required>
	<select class="form-control" name="pincode">
		<option value="600004">600004</option>
	</select>
	DETAILS:<input  class="form-control" type="TextArea" name="details">
	<input type="submit" value="submit" class="btn-primary form-control">
	<div class="btn-block btn-group">
	<input type="submit" value="Register" class="form-control btn-outline-primary">
	<input type="reset" value="clear" class="form-control btn-outline-primary">
	</div>
${REGISTER_ERROR}
<div> -->