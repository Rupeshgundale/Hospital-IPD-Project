<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>


<%@page import="java.sql.*" %>   

<%!
	String pmob,fdate,des;
	//int yr;

   %>
   
  <%
  	pmob=request.getParameter("txtmob");
  	fdate=request.getParameter("txtfdate");
  	des=request.getParameter("txtdes");
  
	
	try
	{
		String un=session.getAttribute("ipddoctor").toString();
		PreparedStatement ps=con.prepareStatement("INSERT INTO `treatment`(`tdesc`, `fdate`, `pmob`,duname) VALUES (?,?,?,?)");
		
	
		ps.setString(1,des);
		ps.setString(2,fdate);
		ps.setString(3,pmob);
		ps.setString(4,un);
		int x=ps.executeUpdate();
		if(x>0)
		{
			
			response.sendRedirect("TreReport.jsp?mob="+pmob+"&tre="+des);

			
		}
		else
		{
	%>
			<script>
				if(confirm("Error in Treatment Report Generation "))
				{
					location="SearchPes.jsp";
				}
				else
				{
					location="SearchPes.jsp";
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