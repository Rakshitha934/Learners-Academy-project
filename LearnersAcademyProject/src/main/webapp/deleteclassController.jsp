
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
int id1=Integer.parseInt(request.getParameter("cid"));
int row =dao.Delete(id1);
if(row>0){
response.sendRedirect("successedit.jsp");
}
else{
	response.sendRedirect("failedit.jsp");
	
}
%>

</body>
</html>