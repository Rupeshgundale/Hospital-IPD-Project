<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>


<%@page import="java.sql.*" %>   

<%!
	String pid,bdate,bno,rc,dc,bbc,lbc,mec,fb,disnote,rno,rtype;
	//int yr;

   %>
   
  <%
  	rno=request.getParameter("txtRNO");
  	rc=request.getParameter("txtRC");
  	dc=request.getParameter("txtDC");
  	bbc=request.getParameter("txtBB");
  	lbc=request.getParameter("txtLT");
  	mec=request.getParameter("txtME");
  
  
  	fb=request.getParameter("txtFB");
	bno=(request.getParameter("txtBNO"));

	bdate=request.getParameter("txtddate");
	pid=request.getParameter("txtPID");
	disnote=request.getParameter("txtDnote");
	rtype=request.getParameter("txtRtype");
	
	try
	{
		PreparedStatement ps1=con.prepareStatement("UPDATE general_ward2 SET bedstatus=? WHERE bed_no=?");
		ps1.setString(1,"Available");
		ps1.setString(2,rno);
		ps1.executeUpdate();
		
		PreparedStatement ps2=con.prepareStatement("UPDATE ward2_booking SET toDate=? WHERE bno=?");
		ps2.setString(1,bdate);
		ps2.setString(2,bno);
		ps2.executeUpdate();
		
		PreparedStatement ps=con.prepareStatement("INSERT INTO `bill`(`bdate`, `pid`, `bno`, `roomcharge`, `doctorcharge`, `bbcharge`, `labtestcharge`, `medi_eqpcharge`, `finalbillamt`, `dischargenote`,rtype) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,bdate);
		ps.setString(2,pid);
		ps.setString(3,bno);
		ps.setString(4,rc);
		ps.setString(5,dc);
		ps.setString(6,bbc);
		ps.setString(7,lbc);
		ps.setString(8,mec);
		ps.setString(9,fb);
		ps.setString(10,disnote);
		ps.setString(11,rtype);
		
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Discharge Card Generated!!"))
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
		out.println(e);
	}
	
  
  %>