
<%@page import="com.caltech.pojo.classes"%>
<%@page import="com.caltech.dao.Classessdao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Classessdao dao=new Classessdao();
classes classes=new classes();
classes.setCid(Integer.parseInt(request.getParameter("cid")));
classes.setCname(request.getParameter("cname"));
int row=dao.edit(classes);
if(row>0){
response.sendRedirect("successedit.jsp");
}
else{
	response.sendRedirect("failedit.jsp");
	
}
%>
	
</body>
</html>