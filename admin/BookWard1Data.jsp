<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>
<%@page import="java.time.format.DateTimeFormatter" %>
<%@page import="java.time.LocalDateTime" %>


<%@page import="java.sql.*" %>   

<%!
	String rno,pid;
	//int yr;

   %>
   
  <%
  	rno=request.getParameter("txtrno");
  	pid=request.getParameter("pname");
  	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
    LocalDateTime now = LocalDateTime.now();  
    String dt=dtf.format(now);  
  	
  	
	try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO `ward1_booking`(`pid`, `bedno`, `frmDate`, `toDate`) VALUES (?,?,?,?)");
		ps.setString(1,pid);
		ps.setString(2,rno);
		ps.setString(3,dt);
		ps.setString(4,"2000-02-10");
		PreparedStatement ps1=con.prepareStatement("update general_ward1 set bedstatus=? where bed_no=?");
		ps1.setString(1,"Booked");
		ps1.setString(2,rno);
		
		int x=ps.executeUpdate();
		int y=ps1.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Bed Booked Successfully!!"))
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
				if(confirm("Error in Room Booking "))
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
		
	}
	catch(Exception e)
	{
		out.println(e+" "+dt);
	}
	
  
  %>