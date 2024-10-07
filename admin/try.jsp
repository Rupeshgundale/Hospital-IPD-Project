<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<%@include file="admin_navigation.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Hospital IPD</title>

</head>
<body>


<div class="container-fluid">
	<div class=row>
		<div class="col-2 bg-info text-white"">
			<div><a href=# class="text-white">New Patient</a></div>
			<div><a href=# class="text-white">New Staff</a></div>
			<div><a href=# class="text-white">New Patient</a></div>
			<div><a href=# class="text-white">New Staff</a></div>
			
		
		</div>
		<div class= "col-9 ">
			<form action=>
		
			<div class=row>
				<div class=col-12 >
   					<label  class="btn btn-primary btn-lg btn-block" for="exampleInputEmail1" style="background-color:#7898ab;width:1000px;text-align:left;">Add New Staff</label><br>
  				</div>
				<div class=col-8>
					<div class=form-label>Name</div>
					<input type=text class=form-control name=txtname id=txtid required>
					<div class=form-label>Mobile No</div>
					<input type=text class=form-control name=txtname id=txtid required>
					<div class=form-label>Birth Date</div>
					<input type=date class=form-control name=txtname id=txtid required>
					
				</div>
				<div class=col-4>
					<img class="border border-info rounded-lg" src=.. >
				</div>
			</div>
			<div class=row>
				<div class=col-12>
				<div class=form-label>EmailId</div>
				<input type=text class=form-control name=txtname id=txtid required>
				<div class=form-label>Address</div>
				<input type=textarea class=form-control name=txtname id=txtid required>
					
				</div>
			</div>
			
			
			<div class=row>
			<div class=col-6>
				<div class=form-label>Education</div>
				<input type=text class=form-control name=txtname id=txtid required>
				<div class=form-label>Joining Date</div>
				<input type=date class=form-control name=txtname id=txtid required>
			</div>
			<div class=col-6>
				<div class=form-label>Passing Year</div>
				<input type=number class=form-control name=txtname id=txtid required>
				<div class=form-label>Salary</div>
				<input type=text class=form-control name=txtname id=txtid required>
			</div>
			
		</div>
		<div class=row>
			<div class=col-12>
			<br>
			<button type="button" class="btn btn-primary btn-lg btn-block">Add Staff</button>
			</div>
		</div>
	</div>
	</div>
	
</div>
</body>
</html>