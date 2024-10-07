<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="connect.jsp"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<title>Hospital IPD | Discharge</title>
<script src=js/jquery.js></script>
<script src=js/form_val.js></script>
<script>
function registerDoctor()
{
	
	if(subEmpty==0 && subName==0 && subEmail==0 && subUsername==0 &&  subMobile==0 && subPassword==0)
	{
		
		document.getElementById("frmDocRegister").submit();
		
	}
	else
	{
		alert("Enter all fields properly");
	}
}
function DeallocateRoom()
{
	
	if(subEmpty==0 && subNumber==0)
	{	
		document.getElementById("frmDischarge1").submit();
	}
	else
	{
		alert("Enter all fields properly");
	}
}
function getFinalTotal() 
	{
		
		fb = parseInt(document.getElementById("txtRC").value)
				+ parseInt(document.getElementById("txtDC").value)
				+ parseInt(document.getElementById("txtBB").value)
				+ parseInt(document.getElementById("txtLT").value)
				+ parseInt(document.getElementById("txtME").value);
		document.getElementById("txtFB").value=fb;
	}
</script>


<script type="text/javascript">
function noBack(){window.history.forward();}
noBack();
window.onload=noBack;
window.onpageshow=function(evt){if(evt.persisted)noBack();}
window.onunload=function(){void(0);}
</script>
<script>

	
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

				<%
String bno=request.getParameter("bno");
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
LocalDateTime now = LocalDateTime.now();  

SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
String dt=dtf.format(now);  
	
try
{
	PreparedStatement ps=con.prepareStatement("select * from general_ward2,ward2_booking ,patient where ward2_booking.bno=? and ward2_booking.pid=patient.pid and ward2_booking.bedno=general_ward2.bed_no");
	ps.setString(1,bno);
	ResultSet rs=ps.executeQuery();
	rs.next();
	
%>



				<div class=container>
					<div class="row justify-content-center">
						<div class="col-11 shadow p-3 mb-5 bg-white rounded">
							<h2 class="text-info mb-4">Discharge Patient</h2>
							<form action=addDischargeWard1.jsp method=get id=frmDischarge1>
							
								<div class="form-group">
									<label for="exampleInputEmail1"
										style="background-color: #515c54; width: 100%; padding: 15px; text-align: center; color: White;">+
										Patient and Room Details </label><br>
								</div>
								<div class="row justify-content-center">
								<div class=col-2>
										<div class="form-group">
											<label for="exampleInputEmail1">Booking No </label> <input
												type="text" class="form-control" id="txtBNO" name="txtBNO"
												value="<%=rs.getString(4)%>" readonly
												onblur="validateMobile(this,document.getElementById('mbErr'),'Enter Valid Mobile Number')">
											<small id="mbErr" class="text-danger"></small>
										</div>
									</div>
									<div class=col-3>
										<div class="form-group">
											<label for="exampleInputEmail1">Admit Date </label> <input
												type="text" class="form-control" id="txtAdate" name="txtAdate"
												value="<%=rs.getString(7)%>" readonly
												onblur="validateMobile(this,document.getElementById('mbErr'),'Enter Valid Mobile Number')">
											<small id="mbErr" class="text-danger"></small>
										</div>
									</div>
									<div class="col-5 offset-1">
										<diV>
											<label for="exampleInputEmail1">Discharge Date</label> <input
												type="text" class="form-control" id="txtddate"
												name="txtddate" value="<%=dt%>" readonly
												onblur="validateDob(this,document.getElementById('errDob'),'Invalid DOB or your are underage')">
											<small id="errDob" class="text-danger"></small>
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<div class=col-5>
										<div class="form-group">
											<label for="exampleInputEmail1">Patient Id</label> <input
												type="text" class="form-control" id="txtname" name="txtPID"
												value="<%=rs.getString(9)%>" readonly
												onblur="validateName(this,document.getElementById('errName'),'Enter Valid Name')">
											<small id="errName" class="text-danger"></small>
										</div>
										</div>
										<div class="col-5 offset-1">
											<div class="form-group">
												<label for="exampleInputEmail1">Patient Name</label> <input
													type="text" class="form-control" id="txtPname"
													name="txtname" value="<%=rs.getString(11) %>" readonly
													onblur="validateName(this,document.getElementById('errName'),'Enter Valid Name')">
												<small id="errName" class="text-danger"></small>
											</div>
										</div>
									</div>

								<div class="row justify-content-center">
									<div class=col-5>
										<div class="form-group">
											<label for="exampleInputEmail1">Mobile No </label> <input
												type="text" class="form-control" id="txtmob" name="txtmob"
												value="<%=rs.getString(10)%>" readonly
												onblur="validateMobile(this,document.getElementById('mbErr'),'Enter Valid Mobile Number')">
											<small id="mbErr" class="text-danger"></small>
										</div>
									</div>
									<div class="col-5 offset-1">
										<diV>
											<label for="exampleInputEmail1">Birth Date</label> <input
												type="date" class="form-control" id="txtbdate"
												name="txtbdate" value="<%=rs.getString(12)%>" readonly
												onblur="validateDob(this,document.getElementById('errDob'),'Invalid DOB or your are underage')">
											<small id="errDob" class="text-danger"></small>
										</div>
									</div>
								</div>

								<div class="row justify-content-center">
									<div class=col-11>
										<div class="form-group">
											<label for="exampleInputEmail1">Address</label>
											<textarea area class="form-control" id="txtadd" readonly
												name="txtadd"
												onblur="validateEmpty(this,document.getElementById('errAdd'),'Enter Address')"><%=rs.getString(13)%></textarea>
											<small id="errAdd" class="text-danger"></small>
										</div>
									</div>

								</div>

								<div class="row justify-content-center">
									<div class=col-5>
										<div class="form-group">
											<label for="exampleInputEmail1">Bed No</label> <input
												type="email" class="form-control" id="txtRNO"
												name="txtRNO" value="<%=rs.getString(1)%>" readonly
												onblur="validateEmail(this,document.getElementById('emailErr'),'Enter Valid Email')">

										</div>
									</div>
									<div class="col-5 offset-1">
										<div class="form-group">
											<label for="exampleInputEmail1">Ward</label> <input
												type="text" class="form-control" id="txtRtype"
												name="txtRtype" value=general_ward2 readonly
												onblur="validateEmpty(this,document.getElementById('errCity'),'Enter Valid City Name')">
											<small id="errCity" class="text-danger"></small>
										</div>
									</div>
								</div>

								<div class="row justify-content-center">
									<div class=col-5>
										<div class="form-group">
											<label for="exampleInputEmail1">Room Charges/day</label> <input
												type="text" class="form-control" id="txtRCharges"
												name="txtRCharges" value="<%=rs.getString(2)%>" readonly
												onblur="validateEmpty(this,document.getElementById('errCity'),'Enter Valid City Name')">
											<small id="errCity" class="text-danger"></small>
										</div>
									</div>
									<div class="col-5 offset-1">
										<div class="form-group">
											<label for="exampleInputEmail1">Reason for Treatment</label>
											<input type="text" class="form-control" id="txtexp"
												name="txtTreat" value="<%=rs.getString(16)%>" readonly
												onblur="validateNumber(this,document.getElementById('errExp'),'Enter Valid Number')">
											<small id="errExp" class="text-danger"></small>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1"
										style="background-color: #515c54; width: 100%; padding: 15px; text-align: center; color: White;">+
										Charges Details </label><br>
								</div>

								<%
								 Date d1 = sdf.parse(rs.getString(7));
					            Date d2 = sdf.parse(dt);
					            long difference_In_Time = d2.getTime() - d1.getTime();
					            long difference_In_Days = (difference_In_Time / (1000 * 60 * 60 * 24))% 365;
					            long amt=difference_In_Days*Long.parseLong(rs.getString(2));
								%>


								<div class="row justify-content-center">
									<div class=col-5>
										<div class="form-group">
											<label for="exampleInputEmail1">Total Admit Days</label> <input
												type="text" class="form-control" id="txtcity"
												name="txtCharges" value="<%=difference_In_Days%>" readonly
												onblur="validateEmpty(this,document.getElementById('errCity'),'Enter Valid City Name')">
											<small id="errCity" class="text-danger"></small>
										</div>
									</div>
									<div class="col-5 offset-1">
										<div class="form-group">
											<label for="exampleInputEmail1">Total Room Charges</label>
											<input type="text" class="form-control" id="txtRC"
												name="txtRC" value="<%=amt %>" readonly
												onblur="validateNumber(this,document.getElementById('errRC'),'Invalid Amount')">
											<small id="errRC" class="text-danger"></small>
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<div class=col-5>
										<div class="form-group">
											<label for="exampleInputEmail1">Doctor Charges</label> <input
												type="text" class="form-control" id="txtDC" name="txtDC"
												onblur="validateNumber(this,document.getElementById('errDC'),'Invalid Field')">
											<small id="errDC" class="text-danger"></small>
										</div>
									</div>
									<div class="col-5 offset-1">
										<div class="form-group">
											<label for="exampleInputEmail1">Blood Bank Charges</label> <input
												type="text" class="form-control" id="txtBB"
												name="txtBB"
												onblur="validateNumber(this,document.getElementById('errBB'),'Enter Amount')">
											<small id="errBB" class="text-danger"></small>
										</div>
									</div>
								</div>

								<div class="row justify-content-center">
									<div class=col-5>
										<div class="form-group">
											<label for="exampleInputEmail1">Lab Test Charges</label> <input
												type="text" class="form-control" id="txtLT" name="txtLT"
												onblur="validateNumber(this,document.getElementById('errLT'),'Enter Amount')">
											<small id="errLT" class="text-danger"></small>
										</div>
									</div>
									<div class="col-5 offset-1">
										<div class="form-group">
											<label for="exampleInputEmail1">Medical Equipment Charges</label> <input
												type="text" class="form-control" id="txtME"
												name="txtME"
												onblur="validateNumber(this,document.getElementById('errME'),'Enter Amount')">
											<small id="errME" class="text-danger"></small>
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<div class=col-11>
										<div class="form-group">
											<label for="exampleInputEmail1">Final Bill Amount</label>
											<input type=text class="form-control" id="txtFB"
												name="txtFB" onClick="getFinalTotal()">
											<small id="errFB" class="text-danger"></small>
										</div>
									</div>

								</div>
								<div class="row justify-content-center">
									<div class=col-11>
										<div class="form-group">
											<label for="exampleInputEmail1">Discharge Note</label>
											<textarea area class="form-control" id="txtDnote" 
												name="txtDnote"
												onblur="validateEmpty(this,document.getElementById('errDnote'),'Enter Note')"></textarea>
											<small id="errDnote" class="text-danger"></small>
										</div>
									</div>

								</div>


								<input type="button" class="btn btn-primary"
									style="width: 100%;" id=login value="Confirm Print Discharge Report"
									onclick="DeallocateRoom()">
							</form>
						</div>
					</div>
				</div>

				<%
}
catch(Exception e)
{
	out.println(e+" "+dt);
}
%>

				


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