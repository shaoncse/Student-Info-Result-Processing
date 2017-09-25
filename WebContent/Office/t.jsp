<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/regi.css">
	  
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap-theme.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="/StudentResult/bootstrap/js/main.js"></script>
	<script src="/StudentResult/bootstrap/js/bootstrap.js"></script>
	<title>office admin</title>
</head>
<body>
<div class="container">
 	
 	<div class="col-md-3">
 	</div>
	
	<div class="col-md-6">
	
	</br>
	<center><h3>Please Insert Information About </h3></center>
		<div class="from">
			<div class="screen-reader-response"></div>
				<form action="/StudentResult/insertinfo" method="post">
			<table align="center" width="70%" border="0">


<tr>
<tr>
<td> Student id : <input type="text" name="st_id" placeholder="type here to insert" required /></td>
</tr>
<tr>
<td>Student Name: <input type="text" name="st_name" value=""></td>
</tr>
<tr>
<td>Department name: <input type="text" name="st_dept" value=""></td>
</tr>
<tr>
</tr>
<tr>
<td>Session: <input type="text" name="st_session" value=""></td>
</tr>
<tr>
<td>Date of Birth: <input type="date" name="st_dob" value=""></td>
</tr>
<tr>
<td>Blood Group: <input type="text" name="st_blood" value=""></td>
</tr>
<tr>
<td>City: <input type="text" name="st_city" value=""></td>
</tr>
<tr>
<td>Email: <input type="text" name="st_email" value=""></td>
</tr>
<tr>
<td>Contact No: <input type="text" name="st_cont" value=""></td>
</tr>


<tr>
<td>Present address: <input type="text" name="st_pres" value=""></td>
</tr>
<tr>
<td>Parmanent address: <input type="text" name="st_perm" value=""></td>
</tr>



<tr>
<td><button type="submit" name="btn-login">Submit</button></td>
</tr>

</table>

				</form>
</div>
</div>
</div>
</body>
</html>