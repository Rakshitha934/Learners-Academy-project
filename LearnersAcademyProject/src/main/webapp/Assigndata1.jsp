<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caltech.pojo.ClassSubjectsTeachers"%>
    <%@page import="com.caltech.dao.ClassSubjectsTeachersdao"%>
     <%@page import="com.caltech.pojo.classes"%>
      <%@page import="com.caltech.dbconfig.DbUtil"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import ="java.sql.ResultSet"%>
   <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<feildset>
<center>

<h1> Assign Teacher and Subject for <%=request.getParameter("cname")%>  </h1>

<form action="Assigndatacontroller.jsp?cname=<%=request.getParameter("cname")%>">
<input type="hidden" name="cname" value=<%=request.getParameter("cname")%>>
id :<input type="text" name="id"><br><br>
Add Subject:<input type="text" name="Subject"><br><br>
Add Teacher:<input type="text" name="Teacher"><br><br>
<input type="submit" value="Assign">

</form>
<br>
<br>


<table border="1">
<tr><th>ID</th><th>Class  Name</th><th>Subject Name </th><th>Teacher Name</th><th>Action</th></tr></center>
<%Connection con=DbUtil.dbConn(); 
List<ClassSubjectsTeachers> list= new ArrayList<ClassSubjectsTeachers>();
ClassSubjectsTeachers c=new ClassSubjectsTeachers();
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
	<td><a href="deleteSubandtechController.jsp?id=<%=rs.getInt(1)%>">Delete</a></td></tr>
	
<%
}
%>


				
			

</center>
</feildset>
</body>
</html>


