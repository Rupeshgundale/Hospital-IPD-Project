
<%@include file="connect.jsp" %>


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
<script src=js/data_validation.js></script>
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
						<div class="col-12 shadow p-3 mb-5 bg-white rounded">
						<h2 class="text-info mb-4">Staff Details</h2>
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Name</th>
									<th scope="col">Address</th>
									<th scope="col">Email</th>
									<th scope="col">Desgination</th>
								</tr>
							</thead>
							<tbody>
								<%
									Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from staff");
									while(rs.next())
									{
										%>
									<tr>
										<th scope="row"><%=rs.getString(1) %></th>
										<td><%=rs.getString(2) %></td>
										<td><%=rs.getString(3) %></td>
										<td><%=rs.getString(4) %></td>
										<td><%=rs.getString(8) %></td>
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