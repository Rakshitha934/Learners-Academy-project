<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caltech.dao.Subjectsdao"%>
     <%@page import="com.caltech.pojo.Subjects"%>
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

 <br>
 <br>
 <form action="AddClass.jsp"> 
<form action="Assigndata.jsp"></form>
<form action="AddSubject.jsp"></form>

<fieldset>
 <center>
<form action="AddSubject.jsp">
<input type="submit" value ="Add Subject"></form> </center>
 <br>
 <br>
 <center>
 <table border="1">
<tr><th>ID</th><th>Subject Name</th><th> Edit </th><th>Delete </th></tr></center>
<%Subjectsdao dao= new Subjectsdao();
List<Subjects> list =dao.display();
for(Subjects s:list){
%>
<tr>
<td><%=s.getSubid()%></td>
<td><%=s.getSname()%></td>
<td><a href="editsubject.jsp?subid=<%=s.getSubid()%>">Edit</a>
</td><td><a href="deleteSubjectController.jsp?subid=<%=s.getSubid()%>">Delete</a></td>
</tr>
<%
}
%>

</table>
</body>
</html>