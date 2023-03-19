<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caltech.dao.Teachersdao"%>
<%@page import="com.caltech.pojo.Teachers"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Teachersdao dao=new Teachersdao();
Teachers t= new Teachers();
t.setId(Integer.parseInt(request.getParameter("id")));
t.setTname(request.getParameter("Teachername"));
t.setTdesig(request.getParameter("teacherdesig"));

int row= dao.insert(t);
if(row>0){
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>