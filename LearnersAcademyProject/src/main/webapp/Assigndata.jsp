<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.caltech.pojo.Teachers"%>
       <%@page import="com.caltech.pojo.Subjects"%>
       <%@page import="com.caltech.pojo.classes"%>
<%@page import="com.caltech.dao.Teachersdao"%>
<%@page import="com.caltech.dao.Classessdao"%>
<%@page import="com.caltech.dao.Subjectsdao"%>
<%@page import="com.caltech.pojo.ClassSubjectsTeachers"%>
<%@page import="com.caltech.dao.ClassSubjectsTeachersdao"%>
<%@page import="com.caltech.dbconfig.DbUtil"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSet"%>
   <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<feildset>

<%classes classes=new classes(); %>
<center><h1> Assign Teacher and Subject for <%=request.getParameter("cname")%>  </h1>
<br>


<%Connection con=DbUtil.dbConn(); 
List <Teachers> list= new ArrayList<Teachers>();
			String sql="select * from Teachers";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();%>
			<center>
 Select Teacher:<select name ="Teacher">
<option>Select</option>
<% while(rs.next()){ %>
<option value=<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
<% } %>
</select>

</center>
<br>
<br>

<%Connection con1=DbUtil.dbConn();
List <Subjects> list1= new ArrayList<Subjects>();
String sql1="select * from Subjects";
PreparedStatement ps1=con.prepareStatement(sql1);
ResultSet rs1=ps1.executeQuery();

%>

Select Subject:
<select name="Subject" >
<option>Select</option>
<% while(rs1.next())
{ 

String Subject = rs1.getString(2);
%>
<option value=<%=Subject%>"><%=Subject%></option>
<% } %>

</select>

</center>
<br>
<br>
<center>


<% classes c=new classes();%>
<form action="Assigndatacontroller.jsp">
<input type="hidden" name="cid" value=<%=request.getParameter("cid") %>>
<input type="hidden" name="cname" value=<%=request.getParameter("cname") %>>

<input type="submit" value="Assign"></form>
<br>
<br>
  <table border="1">
  <tr><th>Id</th><th>Class Name</th><th>Subject Name</th><th>Teacher Name</th><th>Action</th></tr>
  <%-- 
  <%ClassSubjectsTeachersdao dao  =new  ClassSubjectsTeachersdao() ;
  List<ClassSubjectsTeachers> list3= dao.display();
 for (ClassSubjectsTeachers cst :list3){
  %>
  <tr><td><%=cst.getId()%></td><td><%=cst.getCname()%><td><%=cst.getSname() %></td><td><%=cst.getTname() %>
 <%} %> 
  --%>
  </center>

  </table>
</body>
</html>