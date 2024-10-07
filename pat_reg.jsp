<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- Site Metas -->
<title>Hospital IPD</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- Site Icons -->
<link rel="shortcut icon" href="images/fevicon.ico.png"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
<!-- Modernizer for Portfolio >
   <script src="js/modernizer.js"></script-->
<!-- [if lt IE 9] -->


<style>
.frm {
	margin-top: 40vh;
}

.form-text {
	color: red;
}
</style>

<script src=js/jquery.js></script>
<script src=js/form_val.js></script>
<script>
function registerPatient()
{
	
	if(subEmpty==0 && subName==0 && subEmail==0  && subMobile==0)
	{
		
		document.getElementById("frmPatRegister").submit();
		
	}
	else
	{
		alert("Enter all fields properly");
	}
}
</script>

</head>


<%@include file="header.jsp"%>

<body>


	<form action=addPatientData.jsp method=get id=frmPatRegister>
		<div class="container frm">

			<div class="row justify-content-center">

				<div
					class="col-8 align-self-center shadow p-3 mb-5 bg-white rounded">
						
		<div class="form-group">
									<label for="exampleInputEmail1"
										style="background-color: #b50909; width: 100%; padding: 15px; text-align: center; color: White;">+
										New Patient Registration</label><br>
								</div>


								<div class="form-group">
									<label for="exampleInputEmail1">Patient Name</label> <input
										type="text" class="form-control" id="txtname" name="txtname"
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
										onblur="validateEmpty(this,document.getElementById('errDob'),'Invalid DOB ')">
									<small id="errDob" class="text-danger"></small>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Email</label> <input
										type="email" class="form-control" id="txtemail"
										name="txtemail"
										onblur="validateEmail(this,document.getElementById('emailErr'),'Enter Valid Email')">
									<small id="emailErr" class="text-danger"></small>
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
									<label for="exampleInputEmail1">Initial History /
										Reason for Admission</label>
									<textarea area class="form-control" id="txtHistory"
										name="txtHistory"
										onblur="validateEmpty(this,document.getElementById('errAdd'),'Enter Address')"></textarea>
									<small id="errAdd" class="text-danger"></small>
								</div>









								<input type="button" class="btn btn-primary"
									style="width: 100%;" id=login value=Register
									onclick="registerPatient()">
		
			</form>
	


	</div>
	</div>
	</div>
	</form>

	<%@include file="footer.jsp"%>
</body>