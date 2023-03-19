<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.caltech.pojo.Students"%>
       <%@page import="com.caltech.pojo.classes"%>
<%@page import="com.caltech.dao.ClassSubjectsTeachersdao"%>
<%@page import="com.caltech.pojo.ClassSubjectsTeachers"%>
<%@page import="com.caltech.dao.Classessdao"%>
 <%@page import="java.util.*"%>
 <%@page import="java.sql.Connection"%>
<%@page import="com.caltech.dbconfig.DbUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSetMetaData"%>
<%@page import ="java.sql.ResultSet"%>

<%@page import ="java.util.List"%>;
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
 <fieldset>
 <%classes classes=new classes(); %>
<center><h1> View Students for <%=request.getParameter("cname")%>  </h1>
<br>
<br>
<table border="1">
<tr><th>ID</th><th>First  Name</th><th>Last  Name</th><th>Address</th><th>Phone No</th><th>Class Name</th></tr></center>
<%Connection con1=DbUtil.dbConn(); 
		List<Students> list1= new ArrayList<Students>();
		String classname1=request.getParameter("cname");
		String sql1="select * from Students where cname=?";
		PreparedStatement ps1=con1.prepareStatement(sql1);

		ps1.setString(1, classname1); 
		ResultSet rs1=ps1.executeQuery(); 
		ResultSetMetaData rsmd1 = rs1.getMetaData(); 
		while(rs1.next()){
			%>
			<tr>
			<td><%=rs1.getInt(1)%></td>
			<td><%=rs1.getString(2)%></td>
			<td><%=rs1.getString(3) %></td>
			<td><%=rs1.getString(4)%></td>
			<td><%=rs1.getLong(5)%></td>
			<td><%=rs1.getString(6)%></td>
			</tr>
		<%
		}

		%>


</table>
<br>
<br>
<br>

<center><h1> View Subjects and Teachers for <%=request.getParameter("cname")%>  </h1>
 <table border="1">
<tr><th>ID</th><th>Class  Name</th><th>Subject  Name</th><th>Teacher name</th></tr></center>
<%Connection con=DbUtil.dbConn(); 
List<ClassSubjectsTeachers> list= new ArrayList<ClassSubjectsTeachers>();
String classname=request.getParameter("cname");
String sql="select * from class_subjects_teachers where cname=?";
PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1, classname); 
ResultSet rs=ps.executeQuery(); 
ResultSetMetaData rsmd = rs.getMetaData(); 
while(rs.next()){
	%>
	<tr>
	<td><%=rs.getInt(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4)%></td>
	</tr>
<%
}

%>
		<center>
</table>
</body>
</html>