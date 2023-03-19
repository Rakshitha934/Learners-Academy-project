
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
Students s=new Students();
s.setSid(Integer.parseInt(request.getParameter("id")));
s.setFname(request.getParameter("fname"));
s.setLname(request.getParameter("lname"));
s.setAddress(request.getParameter("address"));
s.setPhoneno(Long.parseLong(request.getParameter("phoneno")));
s.setCname(request.getParameter("class"));

int row=dao.edit(s);
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