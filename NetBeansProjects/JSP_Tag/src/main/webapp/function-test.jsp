<%-- 
    Document   : function-test
    Created on : Aug 11, 2018, 7:32:03 PM
    Author     : Dark
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4> Tag Functions </h4>
        <c:set var = "data" value="testing" />
        <c:set var = "data2" value="singapore,lima,london,paris" />
            
        Length of the string <b>${data}</b> : ${fn:length(data)}
        <br></br>
        UpperCase version of the string <b>${data}</b> :${fn:toUpperCase(data)}
        <br></br>
        Does the string start with <b>test </b> : ${fn:startsWith(data, test)}
        <br></br>
        <hr>
        <h5> Split demo </h5>
        <c:set var="citiesArray" value="${fn:split(data2, ',')}"/>
        
        <c:forEach var="city" items="${citiesArray}">
            ${city} <br/>
        </c:forEach>
            
         <h5> join demo </h5>
        <c:set var="citiesArray2" value="${fn:join(citiesArray, '*')}"/>
        
        <c:forEach var="city" items="${citiesArray2}">
            ${city} <br/>
        </c:forEach>
    </body>
</html>
