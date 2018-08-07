<%-- 
    Document   : cookies-perzonalize-response
    Created on : Aug 8, 2018, 12:18:22 AM
    Author     : Dark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
            String favoriteL = request.getParameter("favouriteLanguage");
            
            Cookie theCookie = new Cookie("myApp.favoriteLanguage", favoriteL);
            
            theCookie.setMaxAge(60*60*24*365);
            
            response.addCookie(theCookie);
       %>
       
       thanks! We set your favorite language to: ${param.favouriteLanguage}
       <br/><br/>
       <a href="cookies-homepage.jsp"> Return to homepage.</a>
    </body>
</html>
