<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Deleteclass.jsp">
<input type="hidden" name="cid" value=<%=request.getParameter("cid") %>>
<input type="submit" value="Deleteclass">
</form>
</body>
</html>