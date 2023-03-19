<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Class Name Delete Form</i></h1>
<form action="deleteclassController.jsp">
<input type="hidden" name="cid" value=<%=request.getParameter("cid") %>>
Delete Name<input type="text" name="cname">
<input type="submit" value="Delete">
</form>

</body>
</html>