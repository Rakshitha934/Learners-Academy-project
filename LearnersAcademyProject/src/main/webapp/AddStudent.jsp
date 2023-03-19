<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caltech.dbconfig.DbUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.caltech.pojo.classes"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSet"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="addstudentcontroller.jsp">

<fieldset>
<h1 align="center">Add Student</h1>
<center>Student ID:<input type="text" name="id"></center><br><br>
<center>Student First name:<input type="text" name="Firstname"></center><br><br>
<center>Student Last name:<input type="text" name="Lastname"></center><br><br>
<center>Student Phone:<input type="text" name="Phoneno"></center><br><br>
<center>Student Address:<input type="text" name="Address"></center><br><br>

<center><%Connection con=DbUtil.dbConn(); 
List <classes> list= new ArrayList<classes>();
			String sql="select * from classes";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();%>
			
			<center>
 Select class:
<select name="classes">
<% while(rs.next()){ %>
<option><%= rs.getString(2)%></option>
<% } %>
</select>
<br>
<br>
<center><input type="submit" value="submit"></center>

</fieldset>
</form>
</body>
</html>