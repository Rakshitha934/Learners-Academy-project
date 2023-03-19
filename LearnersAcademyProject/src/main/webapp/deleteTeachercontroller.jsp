
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
int id1=Integer.parseInt(request.getParameter("id"));
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