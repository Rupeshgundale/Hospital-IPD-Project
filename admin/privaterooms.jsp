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

<title>Hospital IPD</title>
<script src=js/jquery.js></script>

<script src=js/form_val.js></script>
<script>
	function noBack() {
		window.history.forward();
	}
	noBack();
	window.onload = noBack;
	window.onpageshow = function(evt) {
		if (evt.persisted)
			noBack();
	}
	window.onunload = function() {
		void (0);
	}
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
			<%@include file="connect.jsp"%>
			<div class="col-10 my-4">

				<div class=container>
					<div class="row justify-content-center">
						<%
						PreparedStatement ps=con.prepareStatement("select * from rooms where rtype='Private'");
						ResultSet rs=ps.executeQuery();
						while(rs.next())
						{
							if(rs.getString(4).equals("Available"))
							{
							%>

						<div
							class="col-3 mx-4 border border-success shadow-lg p-3 mb-5  rounded">
							<p class="card__exit">
								<img src=../feather/home.svg>
							</p>
							<h2 class="card__title">
								Room No :
								<%=rs.getInt(1) %></h2>
							<p class="card__apply">
								<a class="font-weight-bold">Rent / Day Rs. <%=rs.getInt(3) %>
								</a>
							
							</p>
							<a href="bookroom.jsp?rtype=Private&rno=<%=rs.getInt(1) %>" class="btn btn-info">Book Room</a>
						</div>
						<%
						}
							else
							{
								%>
						<div
							class="col-3 mx-4 bg-danger shadow-lg p-3 mb-5 rounded">
							<p class="card__exit">
								<img src=../feather/home.svg>
							</p>
							<h2 class="card__title">
								Room No :
								<%=rs.getInt(1) %></h2>
							<p class="card__apply">
								<a class="font-weight-bold">Rent / Day Rs. <%=rs.getInt(3) %>
								</a>
							
							</p>
						</div>


						<%
							}
						}
						
						%>

					</div>
					
					<div class="row justify-content-center">
						<div class="col-12 shadow p-3 mb-5 bg-white rounded">
						<h2 class="text-info mb-4">Booking Details</h2>
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">PID</th>
									<th scope="col">Patient Name</th>
									<th scope="col">Mobile</th>
									<th scope="col">Room No.</th>
									<th scope="col">From Date</th>
									<th scope="col">Action</th>
								
								</tr>
							</thead>
							<tbody>
								<%
									Statement st=con.createStatement();
									ResultSet rs1=st.executeQuery("select * from patient,rooms,room_booking where rooms.rtype='Private' and rm_status='Booked' and room_booking.rno=rooms.rno and room_booking.pid=patient.pid");
									
									while(rs1.next())
									{
										%>
									<tr>
										<th scope="row" class="table-active"><%=rs1.getString(1) %></th>
										<td class="table-primary"><%=rs1.getString(3) %></td>
										<td class="table-warning"><%=rs1.getString(2) %></td>
										<td class="table-success"><%=rs1.getString(9) %></td>
										<td class="table-danger"><%=rs1.getString(16) %></td>
										
											<td class="table-info "><a href=deallocateRoom.jsp?bno=<%=rs1.getString(13) %> class="btn btn-warning">Deallocate</a></td>
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