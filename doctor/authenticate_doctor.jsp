<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp" %>
 
  
<%! String un,pass; %>
  
<%
	
	un=request.getParameter("txtUname");
	pass=request.getParameter("txtPass");
	
	PreparedStatement ps=con.prepareStatement("select count(*) from doctor where uname=? and upass=?");
	ps.setString(1,un);
	ps.setString(2,pass);
	
	ResultSet rs=ps.executeQuery();
	rs.next();
	if(rs.getString(1).equals("1"))
	{
		
		session.setAttribute("ipddoctor",un);
%>
	<script>
		if(confirm("Login Successful"))
		{
			location="doctordashboard.jsp";
		}
		else
		{
			location="doctordashboard.jsp";
		}
		
	</script>	
	
	
<%		
	}
	else
	{
%>
	
	<script>
		if(confirm("invalid Username or Password"))
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
	
	
	
	
	
%>