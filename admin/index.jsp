<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital IPD | Admin</title>


<link rel=stylesheet href=css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="css/mystyle.css">

<style>

.frm
{
	margin-top:25vh;
}

body
{
}




</style>



</head>
<body>
<%
if(session.getAttribute("ipdadmin")!=null)
{
	response.sendRedirect("admindashboard.jsp");
}
%>

<form action=authenticate.jsp method=get>
<div class="container frm">
  
  <div class="row justify-content-center">
  
 <div class="col-4 align-self-center shadow p-3 mb-5 bg-white rounded">
  
  <div class="form-group" >
   <label for="exampleInputEmail1" class="bg-info " style="width:100%;padding:15px;text-align:center;">Administrator Login</label><br>
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name=txtUname aria-describedby="emailHelp">
    <small id="emailHelp" class="form-text text-muted"></small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name=txtPass>
  </div>
 
  <button type="submit" class="btn btn-info" style="width:100%;" id=login>Login</button>
  </div>
  </div>
  </div>
</form>

</body>
</html>