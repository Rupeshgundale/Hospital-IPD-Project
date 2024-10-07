<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@include file="connect.jsp" %>


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


	<div class="p-3 my-5 container-fluid" style="margin-top:200px;">
		<div class=row>
			
			<div class="col-10 my-4 ">

				<div class="container">
					<div class="row justify-content-center">
								
						<div class="col-12 shadow p-3 mb-5 bg-white rounded">
						<h2 class="text-white mb-4" style="background-color: #b50909; width: 100%; padding: 15px; text-align: center; color: White;">Doctors Details</h2>
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Name</th>
									<th scope="col">Address</th>
									<th scope="col">Mobile</th>
									<th scope="col">Specialization</th>
								</tr>
							</thead>
							<tbody>
								<%
									Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from doctor");
									while(rs.next())
									{
										%>
									<tr>
										<th scope="row" class="table-active"><%=rs.getString(1) %></th>
										<td class="table-primary"><%=rs.getString(2) %></td>
										<td class="table-warning"><%=rs.getString(3) %></td>
										<td class="table-success"><%=rs.getString(5) %></td>
										<td class="table-danger"><%=rs.getString(7) %></td>
									</tr>

									<%
									}
								
								%>
								</table>
						</div>
					</div>
				</div>




			</div>
		</div>
	</div>

	

	<%@include file="footer.jsp"%>
</body>