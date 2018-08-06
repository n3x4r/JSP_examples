<%-- 
    Document   : homepage
    Created on : 06-ago-2018, 14:37:13
    Author     : cscacho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><!-- include other components -->
        <jsp:include page="my-header.html"></jsp:include>
        <br>
        <footer>
        <jsp:include page="my-footer.jsp"></jsp:include>
        </footer>
    </body>
</html>
