
<%@page import="com.caltech.pojo.Teachers"%>
<%@page import="com.caltech.dao.Teachersdao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Teachersdao dao=new Teachersdao();
Teachers t=new Teachers();
t.setId(Integer.parseInt(request.getParameter("id")));
t.setTname(request.getParameter("tname"));
t.setTdesig(request.getParameter("tdesig"));

int row=dao.edit(t);
out.println(row);
if(row>0){
response.sendRedirect("successedit.jsp");
}
else{
	response.sendRedirect("failedit.jsp");
}
%>
	
</body>
</html>