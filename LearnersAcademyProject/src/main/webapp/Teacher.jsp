<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caltech.pojo.Teachers"%>
<%@page import="com.caltech.dao.Teachersdao"%>
 <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<fieldset>
 <center>
<form action="AddTeacher.jsp">
<input type="submit" value ="Add Teacher"></form> </center>
 <br>
 <br>
 <center>
 <table border="1">
<tr><th>ID</th><th>Teacher Name</th><th>Teacher Designation</th><th> Edit </th><th>Delete </th></tr></center>
<%Teachersdao dao= new Teachersdao();
List<Teachers> list =dao.display();
for(Teachers t:list){
%>
<tr><td><%=t.getId()%></td><td><%=t.getTname()%></td><td><%=t.getTdesig()%></td><td><a href="editteacher.jsp?id=<%=t.getId()%>">Edit</a></td><td><a href="deleteTeachercontroller.jsp?id=<%=t.getId()%>">Delete</a></td></tr>
<%
}
%>

</table>

</body>
</html>