
<%@page import="com.caltech.pojo.Students"%>
<%@page import="com.caltech.dao.Studentdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Studentdao dao=new Studentdao();
Students t=new Students();
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