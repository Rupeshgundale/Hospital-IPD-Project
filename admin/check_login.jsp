<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp" %>
 
  
<%! String un,pass; %>
  
<%
	//response.sendRedirect("admindashboard.jsp");	

	un=request.getParameter("txtUname");
	pass=request.getParameter("txtPass");
	out.println("username "+un);
	out.println("Password "+pass);
	PreparedStatement ps=con.prepareStatement("select count(*) from admin where uname=? and upass=?");
	ps.setString(1,un);
	ps.setString(2,pass);
	
	ResultSet rs=ps.executeQuery();
	out.println(rs.next());
	if(rs.getString(1).equals("1"))
	{
		
		session.setAttribute("ipdadmin",un);
%>
	<script>
		if(confirm("Login Successful"))
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