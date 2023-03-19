x<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="com.caltech.dao.Subjectsdao"%>
<%@page import="com.caltech.pojo.Subjects"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Subjectsdao dao=new Subjectsdao();
Subjects s= new Subjects();
s.setSubid(Integer.parseInt(request.getParameter("id")));
s.setSname(request.getParameter("Subjectname"));
int row= dao.insert(s);
if(row>0){
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>