<%-- 
    Document   : i18n-messages-test
    Created on : Aug 11, 2018, 8:25:24 PM
    Author     : Dark
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="theLocale"
    value="${not empty param.theLocale ? param.theLocale: pageContext.request.locale}"
    scope="session" />

<fmt:setLocale value="${theLocale}" />
<fmt:setBundle  basename="mx.com.gm.sga.jsp_tag.i18n.resources.mylabels"/>


<html>
    
    <body>
        <a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
        |
        <a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
        |
        <a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>
        
        
        <hr>
        <fmt:message key="label.greeting"  /> <br/><br/>
        <fmt:message key="label.firstname" /> <i>Sergio<i/><br/>
        <fmt:message key="label.lastname" /> <i>Cacho<i/><br/>
        <fmt:message key="label.welcome" /> <br/>
            
           
        <hr>
        Selected locale: ${theLocale}

    </body>
</html>
