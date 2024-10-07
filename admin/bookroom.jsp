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

<title>Book Room</title>
<script src=js/jquery.js></script>
<script src=js/form_val.js></script>
<script>
function bookroom()
{
	
	if(subEmpty==0)
	{
		
		document.getElementById("frmBookRoom").submit();
		
	}
	else
	{
		alert("Enter all fields properly");
	}
}

function loadpatient(pname)
{
	ob=new XMLHttpRequest();
	ob.open("GET","loadpatient.jsp?pname="+pname);
	ob.send();
	ob.onreadystatechange=function()
	{
		if(ob.readyState==4)
		{
			document.getElementById("pname").innerHTML=ob.responseText;
		}
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
			<form class="d-flex" >
				<a href=logout.jsp class="btn btn-info">Logout</a>
			</form>
		</div>
	</nav>
	<div class=container-fluid>
		<div class=row>
			<%@include file="admin_navigation.jsp"%>
			<% String rno=request.getParameter("rno");
				String rtype=request.getParameter("rtype");
				
			%>
			<div class="col-10 my-4">

				<div class=container>
					<div class="row justify-content-center">
						<div class="col-10 shadow p-3 mb-5 bg-white rounded">

							<form action=BookRoomData.jsp method=post id=frmBookRoom>

								<div class="form-group">
									<label for="exampleInputEmail1"
										style="background-color: #20692a; width: 100%; padding: 15px; text-align: center; color: White;">+
										Search Patient Details and Allocate Room</label><br>
								</div>


								<div class="form-group">
									<label for="exampleInputEmail1">Enter Patient Name</label> <input
										type="text" class="form-control" id="txtname" name="txtname"
										onkeyup="loadpatient(this.value)" onblur="validateEmpty(this,document.getElementById('errName'),'Field Should not be Empty')">
										<small id="errName" class="text-danger"></small>
								</div>
								<select class=form-control id=pname name=pname>
											

								</select> 
								<div class="form-group">
									<label for="exampleInputEmail1">Room Number</label> <input
										type="text" class="form-control" id="txtrno" name="txtrno"
										value=<%=rno %> readonly>
								</div>
								 
								<div class="form-group">
									<label for="exampleInputEmail1">Room Type</label> <input
										type="text" class="form-control" id="txtrtype" name="txtrtype"
										value=<%=rtype %> readonly>
								</div>
								
								
								<input type="button" class="btn btn-success"
									style="width: 100%;" id=login value="Allocate Room"
									onclick="bookroom()">
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