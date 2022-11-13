<%-- 
    Document   : Table
    Created on : Nov 13, 2022, 11:02:33 AM
    Author     : acer
--%>

<%@page import="model.Student"%>
<%@page import="model.StudentTable"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Table Page</title>
    </head>
    <body>
        <table border="2" style="margin-left: auto; margin-right: auto;">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>GPA</th>
            </tr>
            <%
                List<Student> stdList = StudentTable.findAllStudent();
                for(Student std : stdList){
            %>
            <tr>
                <td><%=std.getId()%></td>
                <td><%=std.getName() %></td>
                <td><%=std.getGpa() %></td>
            </tr>
            <% } %>
        </table>
        <center>
            <a href="index.jsp"> back to the addStudent</a>
        </center>
    </body>
</html>
