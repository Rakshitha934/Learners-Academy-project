<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<fieldset>
<center>
<body>

<h1><i>Subject Edit Form</i></h1>


<form action="editsubjectController.jsp">
<input type="hidden" name="subid" value=<%=request.getParameter("subid")%>>
Update Subject<input type="text" name="sname"><br><br>
<input type="submit" value="Update">
</form>

</center>
</fieldset>
</body>
</html>