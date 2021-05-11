<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forgetpassword</title>
</head>
<body>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","jitendra");
Statement st=con.createStatement();
String email=request.getParameter("usersName");
String strQuery = "SELECT password FROM users where usersName='"+usersName+"'";
ResultSet rs = st.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
if(Countrow.equals("1")){
/*mail code
paste your mail code here
------------------
Mail code*/
out.println("Password send to your email id successfully !");
}
else{
out.println("Invalid usersName !");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</body>
</html>