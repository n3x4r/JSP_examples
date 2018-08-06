<%-- 
    Document   : student-response
    Created on : 06-ago-2018, 14:45:22
    Author     : cscacho
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
             String name =    request.getParameter("firstName");
             String lastName = request.getParameter("lastName");               
             out.println("Nombre :"+name);
             out.println("Apellido: "+ lastName);
             
        %>
        
        ${param.firstName} ${param.lastName}
        <br/><br/>
        ${param.country}
        <br/><br/>
        Programing Language : ${param.language_prog}
        <br/><br/>
         <% 
             String[] langs =  request.getParameterValues("language_prog2");
             out.println("Programing Language 2 : ");
             out.println("<br/><br/>");
             for(String d: langs){
                 out.println(d);
             }
             
        %>
    </body>
</html>
