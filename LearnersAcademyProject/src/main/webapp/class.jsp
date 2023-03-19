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
<fieldset>
 <center>
<form action="AddClass.jsp">
<input type="submit" value ="Add Class"></form> </center>
 <br>
 <br>
 <center>
 <table border="1">
<tr><th>ID</th><th>Class  Name</th><th>Edit</th><th>Delete</th></tr></center>
<%Classessdao dao= new Classessdao();
List<classes> list =dao.display();
for(classes c:list){
%>
<tr><td><%=c.getCid()%></td><td><%=c.getCname()%></td><td><a href="editclass.jsp?cid=<%=c.getCid()%>">Edit</a></td><td><a href="deleteclassController.jsp?cid=<%=c.getCid()%>">Delete</a></td></tr>
<%
}
%>
</table>
</body>
</html>