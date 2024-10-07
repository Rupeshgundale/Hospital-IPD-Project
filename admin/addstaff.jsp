<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<title>Add Staff</title>
<script src=js/jquery.js></script>
<script src=js/form_val.js></script>
<script>
function registerStaff()
{
	
	if(subEmpty==0 && subName==0 && subEmail==0  && subMobile==0)
	{
		
		document.getElementById("frmStaffRegister").submit();
		
	}
	else
	{
		alert("Enter all fields properly");
	}
}
</script>

<script type="text/javascript">
function noBack(){window.history.forward();}
noBack();
window.onload=noBack;
window.onpageshow=function(evt){if(evt.persisted)noBack();}
window.onunload=function(){void(0);}
</script>
</head>
<body>

	<nav class="navbar" style="height: 70px; background-color: #566469;">
		<div class="container-fluid">
			<a class="navbar-brand"><img src=../images/logo.png height=40px;></a>
			<form class="d-flex">
				<a href=logout.jsp class="btn btn-info">Logout</a>
			</form>
		</div>
	</nav>
	<div class=container-fluid>
		<div class=row>
			<%@include file="admin_navigation.jsp"%>

			<div class="col-10 my-4">

				<div class=container>
					<div class="row justify-content-center">
						<div class="col-10 shadow p-3 mb-5 bg-white rounded">

							<form action=addstaffData.jsp method=get id=frmStaffRegister>

								<div class="form-group">
									<label for="exampleInputEmail1"
										style="background-color: #1ca0d9; width: 100%; padding: 15px; text-align: center; color: White;">+
										New Staff Registration</label><br>
								</div>


								<div class="form-group">
									<label for="exampleInputEmail1">Name</label> <input type="text"
										class="form-control" id="txtname" name="txtname"
										onblur="validateName(this,document.getElementById('errName'),'Enter Valid Name')">
									<small id="errName" class="text-danger"></small>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Mobile No </label> <input
										type="text" class="form-control" id="txtmob" name="txtmob"
										onblur="validateMobile(this,document.getElementById('mbErr'),'Enter Valid Mobile Number')">
									<small id="mbErr" class="text-danger"></small>
								</div>
								<diV>
									<label for="exampleInputEmail1">Birth Date</label> <input
										type="date" class="form-control" id="txtbdate" name="txtbdate"
										onblur="validateDob(this,document.getElementById('errDob'),'Enter Valid DOB')">
									<small id="errDob" class="text-danger"></small>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Email</label> <input
										type="email" class="form-control" id="txtemail"
										name="txtemail"
										onblur="validateEmail(this,document.getElementById('errEmail'),'Enter Valid Email')">
									<small id="errEmail" class="text-danger"></small>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Address</label>
									<textarea area class="form-control" id="txtadd" name="txtadd"
										onblur="validateEmpty(this,document.getElementById('errAdd'),'Enter Address')"></textarea>
									<small id="errAdd" class="text-danger"></small>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">City</label> <input type="text"
										class="form-control" id="txtcity" name="txtcity"
										onblur="validateEmpty(this,document.getElementById('errCity'),'Enter Valid City Name')">
									<small id="errCity" class="text-danger"></small>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Education</label> <input
										type="text" class="form-control" id="txtedu" name="txtedu"
										onblur="validateEmpty(this,document.getElementById('errEdu'),'Enter Details')">
									<small id="errEdu" class="text-danger"></small>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Pass Year</label> <input
										type="text" class="form-control" id="txtyr" name="txtyr"
										onblur="validateNumber(this,document.getElementById('errPass'),'Enter Valid Data')">
									<small id="errPass" class=text-danger></small>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Job Experience</label> <input
										type="text" class="form-control" id="txtexp" name="txtexp"
										onblur="validateNumber(this,document.getElementById('errExp'),'Enter Valid Number)">
									<small id="errExp" class="text-danger"></small>
								</div>


								<div class="form-group">
									<label for="exampleInputEmail1">Desgination</label> <select
										class="form-control" id="txtdsg" name="txtdesg">

										<option value=Accountant>Accountant</option>
										<option value=receptionist>Receptionist</option>
										<option value=Nurse>Nurse</option>
										<option value=worden>Warden</option>

									</select>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Joinig Date</label> <input
										type="date" class="form-control" id="txtjdate" name="txtjdate"
										onblur="validateEmpty(this,document.getElementById('errDate'),'Select Valid Date')">
									<small id="errDate" class="text-danger"></small>
								</div>



								<div class="form-group">
									<label for="exampleInputEmail1">Salary</label> <input
										type="text" class="form-control" id="txtsal" name="txtsal"
										onblur="validateEmpty(this,document.getElementById('errSal'),'Enter Salary')">
									<small id="errSal" class="text-danger"></small>
								</div>


								<input type="button" class="btn btn-primary"
									style="width: 100%;" id=login value=Register onclick="registerStaff()" >
							</form>
						</div>
					</div>
				</div>




			</div>
		</div>
	</div>







	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
</body>
</html>