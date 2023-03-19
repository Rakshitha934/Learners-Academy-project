<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.caltech.pojo.Students"%>
       <%@page import="com.caltech.pojo.classes"%>
<%@page import="com.caltech.dao.Studentdao"%>
<%@page import="com.caltech.dao.Classessdao"%>
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
<form action="AddStudent.jsp">
<input type="submit" value ="Add Student"></form> </center>
 <br>
 <br>
 <center>
 
 <table border="1">
<tr>
<th>ID</th>
<th>First  Name</th>
<th>Last  Name</th>
<th>Address</th>
<th>Mobile Number</th>
<th>Class Name</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</center>
<%Studentdao dao= new Studentdao();
List<Students> list =dao.display();

for(Students s:list){
%>
<tr>
<td><%=s.getSid()%></td>
<td><%=s.getFname()%></td>
<td><%=s.getLname()%></td>
<td><%=s.getAddress()%></td>
<td><%=s.getPhoneno()%></td>
<td><%=s.getCname()%></td>
<td><a href="editStudent.jsp?id=<%=s.getSid()%>">Edit</a></td>
<td><a href="deleteStudentController.jsp?id=<%=s.getSid()%>">Delete</a></td>
</tr>
<%
}
%>
</table>
</body>
</html>