<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp" %>
<%!
	String un,cpass;

   %>
   
  <%
  	cpass=request.getParameter("txtPassword");
	un=session.getAttribute("ipdadmin").toString();
	
  	
	try
	{
		PreparedStatement ps=con.prepareStatement("update admin set upass=? where uname=?");
		ps.setString(1,cpass);
		ps.setString(2,un);
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Update Successful!!"))
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
				if(confirm("Error in Password Updation "))
				{
					location="frmchangepassword.jsp";
				}
				else
				{
					location="frmchangepassword.jsp";
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