
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>


<%@page import="java.sql.*" %>   
<%@page import="java.time.format.DateTimeFormatter"%>  
<%@page import="java.time.LocalDateTime"%>  


<%!
	String  pname,dname,charges,adate;
  %>
   
  <%
 
  	pname=request.getParameter("pname");
  	dname=request.getParameter("dname");
  	 
     DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
     LocalDateTime now = LocalDateTime.now();  
     String dt=dtf.format(now);  
	
	charges=request.getParameter("txtcharges");
	try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO `appointment`(`tdate`, `pid`, `dno`) VALUES (?,?,?)");
		ps.setString(1,dt);
		ps.setString(2,pname);
		ps.setString(3,dname);
		
	
		int x=ps.executeUpdate();
		
		if(x>0)
		{
			//response.sendRedirect("PrintReceipt.jsp");
			%>
			<script>
				if(confirm("Done"))
				{
					location="admindashboard.jsp";
				}
				else
				{
					location="admindashboard.jsp";
				}	
			</script>	
	<%
			
			
		}
		else
		{
	%>
			<script>
				if(confirm("Error in Taking Appointment"))
				{
					location="frmAppointment.jsp";
				}
				else
				{
					location="frmAppointment.jsp";
				}	
			</script>	
	<%
		
		}
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
  
  %>