<%-- 
    Document   : index
    Created on : Nov 11, 2022, 11:42:03 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student App Page</title>
    </head>
    <body>
        <form name="main" action="addstudent">
            ID : <input type="text" name="id" value="" size="10" />
            <br>
            Name : <input type="text" name="name" value="" size="20" />
            <br>
            GPA : <input type="text" name="gpa" value="" size="10" />
            <br>
            <input type="submit" value="Send" name="submit" />
        </form>
        
    </body>
</html>
