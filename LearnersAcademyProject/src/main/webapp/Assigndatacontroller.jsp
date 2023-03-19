<%@page import="com.caltech.pojo.ClassSubjectsTeachers"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.caltech.dao.ClassSubjectsTeachersdao"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<centre>
<% 
ClassSubjectsTeachersdao dao=new ClassSubjectsTeachersdao();
ClassSubjectsTeachers C=new ClassSubjectsTeachers();

C.setId(Integer.parseInt(request.getParameter("id")));
C.setCname(request.getParameter("cname"));
C.setSname(request.getParameter("Subject"));
C.setTname(request.getParameter("Teacher"));
 
int row =dao.insert(C);

if(row>0){
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("fail.jsp");
}

	
%>
</body>
</html>