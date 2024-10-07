<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="checklogin.jsp" %>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital_IPD | Customer Order</title>
<link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin=anonymous>

<script src=//code.jquery.com/jquery-3.3.1.slim.min.js integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin=anonymous></script>

<script src=//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin=anonymous></script>

<script src=//stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin=anonymous></script>

<script src=//code.jquery.com/jquery-3.5.1.slim.js integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin=anonymous></script>
  
<link rel=stylesheet href=../css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="../css/mystyle.css">

<script type="text/javascript">
function noBack(){window.history.forward();}
noBack();
window.onload=noBack;
window.onpageshow=function(evt){if(evt.persisted)noBack();}
window.onunload=function(){void(0);}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Pacifico&family=Shojumaru&family=Teko:wght@500&display=swap');

.hd
{
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(77,164,156,0.7707457983193278) 0%, rgba(0,255,248,0.5970763305322129) 100%);
}

a
{
	color:black;
	width:300px;
	background-color:red;
	
}

.zoom {
  padding: 10px;
  background-color: #b3edf2;
  transition: transform .2s; /* Animation */
  width: 300px;
  height: 60px;
  margin: 0 auto;
}

.zoom:hover {
  transform: scale(1.6); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
  color:white;
}

.form-text
{
	color:red;
}



</style>

<script src="../JS/form_val.js"></script>

<script>

function printreport()
{
		
			window.print();	
	location="doctordashboard.jsp";
}


</script>
</head>




<body>
<%
	String pmob=request.getParameter("mob");
	String des=request.getParameter("des");
	//bill details
	PreparedStatement ps=con.prepareStatement("select * from patient where pmob=?");
	ps.setString(1,pmob);

	ResultSet rspet=ps.executeQuery();
	rspet.next();
	//customer details
String un=session.getAttribute("ipddoctor").toString();
	PreparedStatement ps1=con.prepareStatement("select * from doctor where uname=?");
	ps1.setString(1,un);
	ResultSet rscust=ps1.executeQuery();
	rscust.next();
	
 
%>



<div class="container my-4"  >
	<div class="row justify-content-center">
		<div class="col-12 shadow p-3 mb-5 bg-white">
			<h1 class=text-center>Treatment Details </h1>
			<hr>
			<p class="text-left text-bold">Patient Name:<%=rspet.getString(3) %></p>
			<p class="text-left">Patient Mob: <%=rspet.getString(2) %></p>
			<h5 class="text-right">Doctor Details</h5>
			<p class="text-right">Name : <span class="text-muted"><%=rscust.getString(2) %></span></p>
			<p class="text-right">Mobile : <span class="text-muted"><%=rscust.getString(5) %></span></p>
			<p class="text-right">Address: <span class="text-muted"><%=rscust.getString(3) %></span></p>
			
			<p class="text-right">Email id: <span class="text-muted"><%=rscust.getString(6) %></p>
					
			<p class="text-right">Education : <span class="text-muted"><%=rscust.getString(7) %></span></p>
			<hr>
			<%
						
		
PreparedStatement ps3=con.prepareStatement("SELECT * FROM `treatment` WHERE pmob=? and tid=(select max(tid) from treatment)");
			ps3.setString(1,pmob);

ResultSet rsprod=ps3.executeQuery();
rsprod.next();

%>
<h4 class="text-left text-bold">Followup Date:<%=rsprod.getString(3) %></h4>
			
	<h3 class="text-left text-bold">Treatment:<%=rsprod.getString(2) %></h3>
		</div>
			
	</div>
<input type=button class="btn btn-outline-warning" value="This is Computer Generated Report. Print?" onclick="printreport()" style="margin-left:400px;">
					</div>

</body>
</html>