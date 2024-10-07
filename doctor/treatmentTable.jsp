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

<title>Book Appointment</title>
<script src=js/jquery.js></script>
<script src=js/form_val.js></script>


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
			<form class="d-flex" >
				<a href=logout.jsp class="btn btn-info">Logout</a>
			</form>
		</div>
	</nav>
	<div class=container-fluid>
		<div class=row>
			<%@include file="doctor_navigation.jsp"%>
			<%@include file="connect.jsp"%>
	
	
	
	
	<div class="container" style="padding-top: 10px; margin-left:200px; margin-top:-1000px;">
		<div class="row my-4 justify-content-center">
			<div class="col-10">
				<%

try
{
	String un=session.getAttribute("ipddoctor").toString();
	PreparedStatement ps=con.prepareStatement("select * from patient,treatment,doctor where doctor.uname=? and doctor.uname=treatment.duname and patient.pmob=treatment.pmob");
	ps.setString(1,un);
	ResultSet rs=ps.executeQuery();
	

%>
<h3 class="text-success text-center mb-4">Treatment Details</h3>

<table class="table table-hover"><tr class=table-primary><th>Treatment id</th><th>Patient Name</th><th>Patient Mobile no</th><th>Treatment</th><th>FollowUp Date</th><th>Dr Name</th><th>Dr Mobile</th></tr>

<%
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString(9)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(12)+"</td><td>"+rs.getString(16)+"</td><td>"+rs.getString(19)+"</td><td>");
		%></td></tr>
		<% //out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getInt(11)+"</td><td><a class='btn btn-warning' style='width:80px;' data-toggle=modal data-target=#exampleModal  onclick=getBookData()>Edit</a></td></tr>");
		
	}
	out.println("</table>");	
}
catch(Exception e)
{
	out.println(e);
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