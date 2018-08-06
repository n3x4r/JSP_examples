<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- have access to request and response html to handler data from the user -->
	<%
		out.println("your Ip Addres: " + request.getRemoteAddr());
	%>
	<%!int i = 0;%><!-- this is invisible for the user -->
	<p>
		<%
			out.println(i);
		%>
	</p>
	<!--  whit <p> we can print the value of one int -->
	<%!String hola = "hi";%>
	<%
		out.println(hola);
	%>
	<!-- Convert values to String %= -->
	<p>
		Today's date:
		<%=(new java.util.Date()).toLocaleString()%></p>
	<%-- Tipo de comentario en JSP 
	===Implicit Objects - JSP ===		
		request:
		This is the HttpServletRequest object associated with the request.
		
		response:
		This is the HttpServletResponse object associated with the response to the client.
		
		out:
		This is the PrintWriter object used to send output to the client.
		
		session:
		This is the HttpSession object associated with the request.
			
		application:
		This is the ServletContext object associated with the application context.
		
		config:
		This is the ServletConfig object associated with the page.
		
		pageContext:
		This encapsulates use of server-specific features like higher performance JspWriters.
		
		page:
		This is simply a synonym for this, and is used to call the methods defined by the translated servlet class.
		
		Exception:
		The Exception object allows the exception data to be accessed by designated JSP.
	--%>
</body>
</html>