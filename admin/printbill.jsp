<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="checklogin.jsp" %>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital IPD | Bill</title>
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

function generateBill(bno)
{
	
	
			window.print();	
	
}


</script>
</head>




<body>
<%
	String bno=request.getParameter("billno");
	
	//bill details
	PreparedStatement ps=con.prepareStatement("select * from bill,patient where billno=? and bill.pid=patient.pid");
	ps.setString(1,bno);
	ResultSet rsbill=ps.executeQuery();
	rsbill.next();
	
%>



<div class="container my-4"  >
	<div class="row justify-content-center">
		<div class="col-12 shadow-none p-3 mb-5 bg-light rounded">
			<div class=col-10>
  						
  					</div>
			<h1 class=text-center><img src=../images/logo.png></h1>
			<h1 class=text-center>IPD Hospital </h1>
			
			<p class="text-center text-success">We are here to Help you 24 x 7</p>
			<p class="text-center text-info">Helpline No:91-020-25651602 | GST No: 123456789654123 | Email: doc@lifecare.com</p>
			<hr>
			<p class="text-left text-bold"><font size=8>Bill No: <%=bno %></font></p>
			<p class="text-left">Bill Date: <%=rsbill.getString(2) %></p>
			<h2 class="text-right">Patient Details</h2>
			<p class="text-right">Name : <span class="text-muted"><%=rsbill.getString(15) %></span></p>
			<p class="text-right">Mobile : <span class="text-muted"><%=rsbill.getString(14) %></span></p>
			<p class="text-right">Address: <span class="text-muted"><%=rsbill.getString(17) %></span></p>
			
			<p class="text-right">City : <span class="text-muted"><%=rsbill.getString(18) %></span></p>
			 <p class="text-right">Room Type: <span class="text-muted"><%=rsbill.getString(12) %></span></p>
					
			
			<%
						
//un=session.getAttribute("cstlgn").toString();
		//out.println(un);				


%>
			<table class="table">
  	<tr><th>Description</th><th>Charges in Rs</th></tr>
    <tr><th>Room Charges </th><td><%=rsbill.getString(5)%></td></tr>
    
    <tr><th>Doctors Fees </th><td><%=rsbill.getString(6)%></td></tr>
    
    <tr><th>Blood Bank Charges </th><td><%=rsbill.getString(7)%></td></tr>
    
    <tr><th>Lab Charges</th><td><%=rsbill.getString(8)%></td></tr>
    
    <tr><th>Medical Equipment Charges </th><td><%=rsbill.getString(9)%></td></tr>
     <tr><th>Final Bill Amount Rs. </th><td><b><%=rsbill.getString(10)%></b></td></tr>
    
    
</table>
</br><br>
<p><b>Discharge Note:</b><%=rsbill.getString(11)%></p>
	
		</div>
			<input type=button onclick="generateBill(<%=bno%>)" class="btn btn-info btn-block" value="Print  Bill " >
	
	</div>

</div>

</body>
</html>