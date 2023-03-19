
<%@page import="com.caltech.pojo.Subjects"%>
<%@page import="com.caltech.dao.Subjectsdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Subjectsdao dao=new Subjectsdao();
Subjects classes=new Subjects();
int id1=Integer.parseInt(request.getParameter("subid"));
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