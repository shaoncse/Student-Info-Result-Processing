<%@page import="java.util.*"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/table.css">
	  <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/regi.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap-theme.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="/StudentResult/bootstrap/js/main.js"></script>
	<script src="/StudentResult/bootstrap/js/bootstrap.js"></script>
	<title>office admin</title>

	<SCRIPT language=Javascript>
      <!--
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
      //-->
   </SCRIPT>
        <script>
$(document).ready(function(){
    $('input[rel="txtTooltip"]').tooltip();
});
</script>

</head>
<body>
<div class="container">
	
	 <div class="header">
		<div class="row">
		
			<div class="col-md-12">
					<img src="/StudentResult/img/b.jpg" alt="" />
							
						
			</div>
			
		
		</div>
	 </div>
	 </div>
<div class="container">
<div class="col-md-2"></div>
<div class="col-md-8" id="box"></div>

<b><form action="AdminRegistration" method="post">
			
			<table align="center">
				<tr align="center">
				<td>Year-Semester:</td>
				<td><select name="user">
						<option value="" selected>User</option>
                        <option value="admin">Admin</option>
                         <option value="office">Office</option>
                           </select>
                        </td>
				</tr>
			
			    <tr>
					<td>User Name:</td>
					<td><input type="text" name="user_name" placeholder="User Name" required="required"  /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" id="txtPassword" value=""/></td>
				</tr>
				<tr>
					<td>Confirm Password:</td>
					<td><input type="password"  id="txtConfirmPassword" value=""/></td>
				</tr>
				<tr align="center">
					<td></td>
					<td><input type="submit" class="btn btn-primary" name="submit" value="Create">
					 
				</tr>
				
				</table>
				</form>
				</div>
				</div>
				
				<div class="col-md-2">
				</div>
				
				
				<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnSubmit").click(function () {
                var password = $("#txtPassword").val();
                var confirmPassword = $("#txtConfirmPassword").val();
                if (password != confirmPassword) {
                    alert("Passwords do not match.");
                    return false;
                }
                return true;
            });
        });
    </script>


</body>
</html>