<%-- 
    Document   : todo-demo
    Created on : Aug 7, 2018, 9:04:25 PM
    Author     : Dark
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="todo-demo.jsp" method="post">
            Add new item: <input type="text" name="theItem"/>
            <input type="submit" value="Submit">
            
        </form>
        
        <%  
            List<String> lista = (List<String>) session.getAttribute("myList");
            if(lista == null){
                lista = new ArrayList<String>();
                session.setAttribute("myList", lista);
               
            }else{
                lista.add(request.getParameter("theItem"));
            }
        %>
        
        <hr>
        <ul>
        <% 
            if(!lista.isEmpty()){
                for(String l: lista){
                    out.println("<li>"+l+"</li>");
                }
            }
        %>
        </ul>
    </body>
</html>
