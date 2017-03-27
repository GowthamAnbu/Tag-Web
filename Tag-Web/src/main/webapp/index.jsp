 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>INDEX PAGE</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<body class="col-lg-12 col-md-12 col-sm-12 col-xl-12">
    <div style="width:300px; margin:0 auto;margin-top: 15%">
        <form class="align-items-center" action="/login" method="get">
               <label for="EMIAL_ID">EMAIL ID:</label>
               <input type="email" id="EMIAL_ID" name="emailId" class="form-control" required="" autofocus="" placeholder="abc@gamil.com">
               <label for="pwd">PASSWORD:</label>
               <input type="password" id="pwd" name="password" style="margin-bottom: 10px" class="form-control" required="">
            <input type="submit" value="Login" class="btn btn-primary btn-md btn-block">
            <a class="btn btn-block btn-sm" href="../register.jsp">not Registered ?</a>
            <a class="btn btn-block btn-sm" href="../complaintRegister.jsp">just Register complaint?</a>
    </form>
    ${LOGIN_ERROR}
</div> 
</body>
</html>
