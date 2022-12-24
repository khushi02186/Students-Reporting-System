<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String rollNo=request.getParameter("rollNo");
String Maths=request.getParameter("Maths");
String English=request.getParameter("English");
String Science=request.getParameter ("Science");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
st.executeUpdate("insert into semI values('"+rollNo+"','"+Maths+"','"+Science+"','"+English+"')");
response.sendRedirect("adminHome.jsp");
}
catch (Exception e)
{
out.println(e);
}
%> 
