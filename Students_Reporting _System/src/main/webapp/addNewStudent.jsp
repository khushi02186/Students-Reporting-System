<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String SurName=request.getParameter ("SurName");

try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
st.executeUpdate("insert into student values('"+rollNo+"', '"+name+"', '"+SurName+"')");
response.sendRedirect("adminHome.jsp");
}
catch (Exception e)
{
out.println(e);
}
%> 