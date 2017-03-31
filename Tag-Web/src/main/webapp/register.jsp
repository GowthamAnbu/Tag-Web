<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTRATION FORM</title>
	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<font class="text-primary" size="7"><center>TRANSPARENT ADMINISTRATIVE GOVERNANCE</center></font>
    <!--images-->
    <img src="../img/TamilNadu_Logo.png" alt="TamilNadu_Logo" width=device-width height="100" style=" position: absolute;
    top: 0px;
    left: 0px;">
    <img src="../img/Emblem_of_India.png" alt="TamilNadu_Logo" width=device-width height="100" style=" position: absolute;
    top: 0px;
    right: 0px;">
<!-- <div style="width:300px; margin:0 auto;margin-top: 5%"> -->
<!--Form with header-->
<div class="card" style="width:300px; margin:0 auto;margin-top:3%">
    <div class="card-block">

        <!--Header-->
        <div class="form-header">
            <h3><a href="/">Register</a></h3>
        </div>

        <!--Body-->
        <form class="form-inline" action="/register" method="get">
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
                <i class="fa fa-mobile-phone prefix"></i>
                <input type="text" id="phoneNumber" name="phoneNumber" class="form-control" pattern="^[789]\d{9}$" required>
                <label for="phoneNumber">Your Phone number</label>
            </div>
             <div class="md-form form-group">
             <i class="fa fa-windows prefix"></i>
                <input type="text" id="doorNo" name="doorNo" class="form-control" required>
                <label for="doorNo">Door Number</label>
            </div>
            Street Name
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
            Pincode
            <fielset class="form-group">
                <select class="form-control" name="pincode">
                    <option value="600004">600004</option>
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
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>
</html>
