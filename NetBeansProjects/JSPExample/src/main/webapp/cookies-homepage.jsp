<%-- 
    Document   : cookies-homepage
    Created on : Aug 8, 2018, 12:21:55 AM
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
            String favLang = "Java";
            
            Cookie[] cookiesA = request.getCookies();
            
            if(cookiesA != null){
                for(Cookie co: cookiesA){
                    if("myApp.favoriteLanguage".equals(co.getName())){
                        favLang = co.getValue();
                        break;
                    }
                }
            }
        %>
        
        <h4>New Books for <%= favLang %> </h4>
        <ul>
            <li>blah blah blah</li>
            <li>blah blah blah</li>
        </ul>
        <br/><br/>
        <h4>Latest New Reports for <%= favLang %> </h4>
        <ul>
            <li>blah blah blah</li>
            <li>blah blah blah</li>
        </ul>
        <br/><br/>
        <a href="cookies-personalize-form.html" >personalize my preferences</a>
    </body>
</html>
