<%-- 
    Document   : Table
    Created on : Nov 13, 2022, 11:02:33 AM
    Author     : acer
--%>

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
        <table border="1">
            <th> ID </th>
            <th> Name </th>
            <th> GPA </th>
        <%
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/student","app","app");
                Statement st = con.createStatement();
                String str = "select * from student";
                ResultSet rs = st.executeQuery(str);
                %>
                <tr>
                <td> <%=rs.getInt("id") %></td>
                <td> <%=rs.getString("name") %></td>
                <td> <%=rs.getDouble("gpa") %></td>
                </tr>
                <%
            } catch (Exception e){
                
            }
        %>
        </table>
        <a href="index.jsp"> back to the addStudent</a>
    </body>
</html>
