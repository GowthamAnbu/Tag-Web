<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Index Page</title>
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
    <!-- Start your project here-->
    <font class="text-primary" size="7"><center>TRANSPARENT ADMINISTRATIVE GOVERNANCE</center></font>
    <!--images-->
    <img src="../img/TamilNadu_Logo.png" alt="TamilNadu_Logo" width=device-width height="100" style=" position: absolute;
    top: 0px;
    left: 0px;">
    <img src="../img/Emblem_of_India.png" alt="TamilNadu_Logo" width=device-width height="100" style=" position: absolute;
    top: 0px;
    right: 0px;">
    <!--Form with header-->
<div class="card" style="width:300px; margin:0 auto;margin-top:3%">
    <div class="card-block">

        <!--Header-->
        <div class="form-header blue darken-2">
            <h3><i class="fa fa-lock"></i> Login:</h3>
        </div>

        <!--Body-->
        <form class="form-inline" action="/login" method="get">
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
                <button class="btn btn-primary" type="submit">Login</button>
                <button class="btn btn-primary" type="reset">Clear</button>
            </div>
        </form>
    </div>
    <p class="text-danger text-center">${LOGIN_ERROR}</p>
    <!--Footer-->
    <div class="modal-footer">
        <div class="options btn-block">
            <a class="btn-block" href="../register.jsp" style="
    width: 250px;
    height: 50px;
    margin: 0 auto;
    padding: 0;
    display: inline-block;
    line-height: 50px;
    text-align: center;"> Sign Up</a>
            <a class="btn-block" href="../complaintRegister.jsp" style="
    width: 250px;
    height: 50px;
    margin: 0 auto;
    padding: 0;
    display: inline-block;
    line-height: 50px;
    text-align: center;">Anonymous Complaint</a>
        </div>
    </div>

</div>
<!--/Form with header-->
    <!-- /Start your project here-->

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
