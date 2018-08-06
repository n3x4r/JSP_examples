<%-- 
    Document   : comprueba_Login
    Created on : 30-jul-2018, 11:56:21
    Author     : cscacho
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
         String usuario = request.getParameter("usuario"); 
         String contra = request.getParameter("contra");
         

            Class.forName("com.mysql.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","123456");
            String sql = "SELECT * FROM USUARIOS where usuario=? and contrasena=?";
            PreparedStatement myStmt = myConnection.prepareStatement(sql);
            myStmt.setString(1, usuario);
            myStmt.setString(2, contra);
            ResultSet myResult = myStmt.executeQuery();
            
            if(myResult.absolute(1)){
                out.println("User authorized");
            }else{
                out.println("Bad User");
            }
            
        %>
    </body>
</html>
