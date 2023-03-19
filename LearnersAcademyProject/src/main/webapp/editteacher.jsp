<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<center>
<h1><i>Teachers Edit Form</i></h1>


<form action="editteacherController.jsp">
<input type="hidden" name="id" value=<%=request.getParameter("id")%>>
Update Teacher Name<input type="text" name="tname"><br><br>
Update Teacher Designation<input type="text" name="tdesig"><br><br>
<input type="submit" value="edit">
</form>

</center>
</fieldset>
</body>
</html>