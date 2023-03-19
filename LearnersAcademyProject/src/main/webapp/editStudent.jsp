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
<h1><i>Student Edit Form</i></h1>


<form action="editStudentController.jsp">
<input type="hidden" name="id" value=<%=request.getParameter("id")%>>
Update First Name<input type="text" name="fname"><br><br>
Update Last name<input type="text" name="lname"><br><br>
Update Address<input type="text" name="address"><br><br>
Update Phone no<input type="text" name="phoneno"><br><br>
Update class<input type="text" name="class"><br><br>
<input type="submit" value="edit">
</form>

</center>
</fieldset>
</body>
</html>