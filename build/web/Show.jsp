<%-- 
    Document   : Show
    Created on : Nov 11, 2022, 11:36:29 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Page</title>
        <jsp:useBean id="student" scope ="page" class="model.Student" />
        <jsp:setProperty name="student" property="*" />
    </head>
    <body>
        <form name="main" action="Check.jsp">
        </form>
        <h3>ID : ${student.id}</h3>
        <h3>Name : ${student.name}</h3>
        <h3>GPA : ${student.gpa}</h3>
        <h3>is added</h3>
        <jsp:include page = "Table.jsp"/>
    </body>
</html>
