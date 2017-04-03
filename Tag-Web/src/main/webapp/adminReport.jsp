<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REPORT</title>
</head>
	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
    <script>
    function stack_overflow() {
    	//another method to convert collection to array
    var table;
    //array creation
    var allValues = new Array();
    var k=0;
    	//gets table
    var oTable = document.getElementById('table');

    //gets rows of table
    var rowLength = oTable.rows.length;
    // console.log("<table>");
    table="<table>";
    //loops through rows    
    for (i = 0; i < rowLength; i++){
    	table+="<tr>";
      //gets cells of current row  
       var oCells = oTable.rows.item(i).cells;

       //gets amount of cells of current row
       var cellLength = oCells.length;

       //loops through each cell in current row
       for(var j = 0; j < cellLength; j++){

              // get your cell info here

              var cellVal = oCells.item(j).innerText;
              allValues[k]=cellVal;
              // console.log("<td>"+allValues[k]+"</td>")
              table+="<td>"+allValues[k]+"</td>";
              k++;
           }
           table+="</tr>";
    }
    // console.log("</table>");
    table+="</table>";
    console.log("table is"+table);
    //---------simplest method to above one to get inner HTML--------------------------------
    /*console.log(document.getElementsByTagName("table")[0].rows);
    console.log(allValues);
    var arr = Array.prototype.slice.call( document.getElementsByTagName("table")[0].rows);
    console.log(arr);*/
    //---------simplest method to above one to get inner HTML--------------------------------
    document.location.href = "../admin/send?table="+table;
    }
   </script> 
<body>
<jsp:include page="/layout/adminHeader.jsp" />
<div class="float-right">
	<button onclick="stack_overflow()" class="btn btn-outline-secondary">Send report to the department head</button>
</div>
	<table class="table table-striped table-bordered table-hover" id="table">
		<thead>
			<td>EMPLOYEE ID</td>
			<td>EMAIL ID</td>
			<td>DEPARTMENT</td>
			<td>DESIGNATION</td>
			<td>RATING</td>
			<td>COMPLAINTS HANDLED</td>
		</thead>
		<jstl:forEach var="i" items="${REPORT_LIST}" varStatus="invalid">
			<tr>
				<td>${i.employeeId}</td>
				<td>${i.emailId}</td>
				<td>${i.departmentName}</td>
				<td>${i.designationName}</td>
				<jstl:set var="ratingId" value="${i.rating}" /> 
				<jstl:set var="noRating" value="${0}" /> 
				<td><jstl:choose>
						<jstl:when test="${ratingId==noRating}">
							<p class="text-muted">nill ratings</p>
						</jstl:when>
						<jstl:otherwise>
							${i.rating}
						</jstl:otherwise>
					</jstl:choose>
				</td>
				<jstl:set var="complaints" value="${i.complaintsHandled}" />
				<jstl:set var="noComplaints" value="${0}" /> 
				<td><jstl:choose>
						<jstl:when test="${complaints==noComplaints}">
							<p class="text-primary">nill complaints</p>
						</jstl:when>
						<jstl:otherwise>
							${i.complaintsHandled}
						</jstl:otherwise>
					</jstl:choose>
				</td>
			</tr>
		</jstl:forEach>
		</table>
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