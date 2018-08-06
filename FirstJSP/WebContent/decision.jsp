<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="es.calculos.Suma"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%! int day = 3; %>
	<% if( day == 3) { %>
	<p> Is 3 </p>
	<% } else { %>
	<p> Is not 3 </p>
	<% } %>
	
	<hr>
	
	<% if(day == 3 ){
		out.println("Is 3");
	}else{
		out.println("Is not 3");
	}	
	%>
	
	
	<hr>
	<% 
         switch(day) {
            case 0:
               out.println("It\'s Sunday.");
               break;
            case 1:
               out.println("It\'s Monday.");
               break;
            case 2:
               out.println("It\'s Tuesday.");
               break;
            case 3:
               out.println("It\'s Wednesday.");
               break;
            case 4:
               out.println("It\'s Thursday.");
               break;
            case 5:
               out.println("It\'s Friday.");
               break;
            default:
               out.println("It's Saturday.");
         }
      %>
      
      
      <hr>
      <%! int fontSize; %> 
       <%for ( fontSize = 1; fontSize <= 3; fontSize++){ %>
         <font color = "green" size = "<%= fontSize %>"><%-- %= for data which will change --%>
            JSP Tutorial
      </font><br />
      <%}%>
      
      <hr>
      
      
      <% fontSize=1; %> 
       <%while ( fontSize <= 3){ %>
         <font color = "green" size = "<%= fontSize %>">
            JSP Tutorial
         </font><br />
         <%fontSize++;%>
      <%}%>
      
      <hr>
      
      <%! int result = 0;
         int num1 = 2;
         int num2 = 3;
      %>
      <%= result= num1+num2 %>
	
	
	 <hr>
	 
	 
	 <%! 
	 	public int suma(int num1, int num2) {
			return num1+num2;
		}
	 %>
	 <%= suma(1,1) %>
	 
	 <hr>
	 
	 
	
        <h2>The include action Example</h2>
        <jsp:include page = "hello.jsp" flush = "true" />
      
      
      <hr>
      
      <%! Suma s = new Suma(); %>
      <%= s.suma(1, 1) %>
      <% out.println(s.suma(1,1)); %>
</body>
</html>