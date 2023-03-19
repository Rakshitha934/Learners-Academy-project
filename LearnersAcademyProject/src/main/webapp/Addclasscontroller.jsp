<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caltech.dao.Classessdao"%>
<%@page import="com.caltech.pojo.classes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Classessdao dao=new Classessdao();
classes c= new classes();
c.setCid(Integer.parseInt(request.getParameter("cid")));
c.setCname(request.getParameter("classname"));

int row= dao.insert(c);
if(row>0){
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>