<%@include file="connect.jsp" %>

<%
String pname=request.getParameter("pname");
pname="%"+pname+"%";
	try
	{
		PreparedStatement ps=con.prepareStatement("select pid,pname from patient where pname like ?");
		ps.setString(1,pname);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
%>
