<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>


<%@page import="java.sql.*" %>   

<%!
	String cname,cmob,cadd,ccity,yr,exp,edu,jdate,sal,desg,bdate,cemail;

  %>
   
  <%
  	cname=request.getParameter("txtname");
  	cmob=request.getParameter("txtmob");
  	cemail=request.getParameter("txtemail");
  	cadd=request.getParameter("txtadd");
  	ccity=request.getParameter("txtcity");
  
  	exp=request.getParameter("txtexp");
  	edu=request.getParameter("txtedu");
	yr=request.getParameter("txtyr");
	jdate=request.getParameter("txtjdate");
	sal=request.getParameter("txtsal");
	bdate=request.getParameter("txtbdate");
	desg=request.getParameter("txtdesg");
	try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO `staff`(`sname`, `saddr`, `scity`, `sbdate`, `semail`, `seducation`, `sdesg`, `completion_yr`, `s_exp`, `sjdate`, `sal`) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,cname);
		ps.setString(2,cadd);
		ps.setString(3,ccity);
		ps.setString(4,bdate);
		ps.setString(5,cemail);
		ps.setString(6,edu);
		ps.setString(7,desg);
		ps.setString(8,yr);
		ps.setString(9,exp);
		ps.setString(10,jdate);
		ps.setString(11,sal);
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Registration  Successful!!"))
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
				if(confirm("Error in Registration "))
				{
					location="addstaff.jsp";
				}
				else
				{
					location="addstaff.jsp";
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