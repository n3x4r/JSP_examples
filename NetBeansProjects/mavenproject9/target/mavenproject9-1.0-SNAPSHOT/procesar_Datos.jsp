<%-- 
    Document   : procesar_Datos
    Created on : 30-jul-2018, 10:29:06
    Author     : cscacho
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String usuario = request.getParameter("usuario"); 
            String contra = request.getParameter("contra");
            String pais = request.getParameter("pais");
            String tecnologia = request.getParameter("tecnologias");
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","123456");
            String sql = "INSERT INTO usuarios (nombre, apellido, usuario, contrasena, pais, tecnologia) VALUES (?,?,?,?,?,?)";
            PreparedStatement myStmt = myConnection.prepareStatement(sql);
            myStmt.setString(1, nombre);
            myStmt.setString(2, apellido);
            myStmt.setString(3, usuario);
            myStmt.setString(4, contra);
            myStmt.setString(5, pais);
            myStmt.setString(6, tecnologia);
            
            myStmt.execute();
            out.println("Registro Ejecutado Con exito");
            
            }catch(IOException e){
                out.println("Ha ocurrido un error");
            }
            
            
     

        
        
        
        %>
    </body>
</html>
