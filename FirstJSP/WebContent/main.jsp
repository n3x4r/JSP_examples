<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <center>
         <h2>Using JavaBeans in JSP</h2>
         <jsp:useBean id = "test" class = "es.calculos.TestBean" />
        <%--  <jsp:setProperty name = "test"  property = "message" 
            value = "Hello JSP..." />  Set a value to the variabe message  --%> 
            
         <p>Got message....</p>
         <jsp:getProperty name = "test" property = "message" /> <%-- get the value of the variable --%>
      </center>
</body>
</html>