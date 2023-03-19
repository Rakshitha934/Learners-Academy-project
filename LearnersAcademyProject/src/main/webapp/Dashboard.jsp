<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.caltech.pojo.classes"%>
<%@page import="com.caltech.dao.Classessdao"%>
   <%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<br>
<a href="class.jsp">Class</a> <a href="Student.jsp">Student</a> <a href="Subject.jsp">Subject</a>  <a href="Teacher.jsp">Teacher</a><br>
 <br>
 <br>
 <form action="AddClass.jsp"> 
<input type="submit" value ="Add Class">
</form>
 <br>
 <br>
<table border="1">
<tr><th>Class ID</th>
<th>Class name</th>
<th>Assign Subject and Teacher</th>
<th> Edit Action</th>
<th>Delete Action</th>

<th>View Subjects, Teachers & Students</th></tr>
<%Classessdao dao=new Classessdao();
List<classes> list=dao.display();
for(classes c:list){
	
%>
<tr><td><%=c.getCid()%></td>
<td><%=c.getCname() %></td>
<td><a href="Assigndata1.jsp?cname=<%=c.getCname()%>">Subject and Teacher</a></td>
<td><a href="editclass.jsp?cid=<%=c.getCid()%>">Edit</a></td>
<td><a href="Deleteclass.jsp?cid=<%=c.getCid()%>">Delete</a></td>
<td><a href="Viewdata.jsp?cname=<%=c.getCname()%>">View Reports</a></td></tr>
<%} %>

</body>
</html>

