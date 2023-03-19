<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caltech.pojo.Students"%>
     <%@page import="com.caltech.pojo.classes"%>
<%@page import="com.caltech.dao.Studentdao"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Studentdao dao=new Studentdao();
Students student=new Students();
classes classes=new classes();

classes.setCname(request.getParameter("classes"));
student.setSid(Integer.parseInt(request.getParameter("id")));
student.setFname(request.getParameter("Firstname"));
student.setLname(request.getParameter("Lastname"));
student.setAddress(request.getParameter("Address"));
student.setPhoneno(Long.parseLong(request.getParameter("Phoneno")));
student.setClasses(classes);

int row=dao.insert(student);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>