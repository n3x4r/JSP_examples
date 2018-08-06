<%-- 
    Document   : fun-test
    Created on : 06-ago-2018, 14:25:27
    Author     : cscacho
--%>

<%@page import="com.mycompany.jspexample.FunUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%= 
            FunUtils.makeItLower("FFUN FUN")
        %>
        
        <% 
           out.println(FunUtils.makeItLower("HELLO FUN "));  
        %>
    </body>
</html>
