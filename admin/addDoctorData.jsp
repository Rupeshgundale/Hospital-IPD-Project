<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>


<%@page import="java.sql.*" %>   

<%!
	String exp,cname,cmob,cadd,ccity,edu,pass,uname,spe,bdate,cemail;
	//int yr;

   %>
   
  <%
  	cname=request.getParameter("txtname");
  	cmob=request.getParameter("txtmob");
  	cemail=request.getParameter("txtemail");
  	cadd=request.getParameter("txtadd");
  	ccity=request.getParameter("txtcity");
  
  
  	spe=request.getParameter("txtspe");
	exp=(request.getParameter("txtexp"));

	edu=request.getParameter("txtedu");
	bdate=request.getParameter("txtbdate");
	uname=request.getParameter("txtuname");	
	pass=request.getParameter("txtPassword");
	
	try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO `doctor`(`dname`, `daddr`, `dcity`, `dmob`, `demial`, `deducation`, `dexp`, `dspec`, `uname`, `upass`) VALUES (?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,cname);
		ps.setString(2,cadd);
		ps.setString(3,ccity);
		ps.setString(4,cmob);
		ps.setString(5,cemail);
		ps.setString(6,edu);
		ps.setString(7,exp);
		ps.setString(8,spe);
		ps.setString(9,uname);
		ps.setString(10,pass);
		
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Doctor Registration  Successful!!"))
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
					location="adddoctor.jsp";
				}
				else
				{
					location="adddoctor.jsp";
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