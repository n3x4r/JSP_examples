
<%@page import="mx.com.gm.sga.jsp_tag.Student"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*" %>

<%
	// just create some sample data ... normally provided by MVC
	List<Student> data = new ArrayList<Student>();

	data.add(new Student("John", "Doe", false));
	data.add(new Student("Maxwell", "Johnson", false));
	data.add(new Student("Mary", "Public", true));

	pageContext.setAttribute("myStudents", data); // set a name to handler de collection
%>

<html>

<body>
	<table border="1">

	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudents}">
		
		<tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>
				<c:choose>
				
					<c:when test="${tempStudent.goldCustomer}"> <!-- if -->
						Special Discount
					</c:when>
					
					<c:otherwise> <!-- else -->
						no soup for you!
					</c:otherwise>

				</c:choose>

				
			</td> 
		</tr>
		
	</c:forEach>

	</table>

</body>

</html>












