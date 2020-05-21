<%-- 
    Document   : practicaTags
    Created on : 21-may-2020, 16:34:00
    Author     : JOZE RODRIGUEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%! String[] paises={"Colombia","Peru","Brasil","Ecuador"};  %>
        <% pageContext.setAttribute("lospaises",paises);//se debe establecer los datos en el contexto de la pag, si no no funciona el foreach  %>
        <h1></h1>
        
        <c:forEach var="p" items="${lospaises}">
            ${p}
        </c:forEach>
        
        
        
    </body>
</html>
