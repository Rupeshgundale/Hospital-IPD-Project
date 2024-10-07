<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>


<%@page import="java.sql.*" %>   

<%!
	String cname,cmob,cadd,ccity,bdate,cemail,history;
	//int yr;

   %>
   
  <%
  	cname=request.getParameter("txtname");
  	cmob=request.getParameter("txtmob");
  	cemail=request.getParameter("txtemail");
  	cadd=request.getParameter("txtadd");
  	ccity=request.getParameter("txtcity");
  
  
  	history=request.getParameter("txtHistory");

	bdate=request.getParameter("txtbdate");

	
	try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO `patient`(`pmob`, `pname`, `pbdate`, `paddr`, `pcity`, `pemail`, `phistory`) VALUES (?,?,?,?,?,?,?)");
		ps.setString(1,cmob);
		ps.setString(2,cname);
		ps.setString(3,bdate);
		ps.setString(4,cadd);
		ps.setString(5,ccity);
		ps.setString(6,cemail);
		ps.setString(7,history);
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Patient Registration  Successful!!"))
			{
				location="index.jsp";
			}
			else
			{
				location="index.jsp";
			}
			
		</script>	
		<%
			
		}
		else
		{
	%>
			<script>
				if(confirm("Error in Registration "))
				{
					location="pat_reg.jsp";
				}
				else
				{
					location="pat_reg.jsp";
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