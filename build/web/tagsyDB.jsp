<%-- 
    Document   : tagsyDB
    Created on : 22-may-2020, 14:52:22
    Author     : JOZE RODRIGUEZ
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% //vamos a crear la conexion con la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            ArrayList<String> actores=new ArrayList<>();
            try{
            
                Connection mc=DriverManager.getConnection("jdbc:mysql://localhost:3306/basepeliculas?zeroDateTimeBehavior=convertToNull","root","1234");
                Statement st=mc.createStatement();
                String consulta="select * from actores";
                
                ResultSet rs=st.executeQuery(consulta);
                
                
                while(rs.next()){
                   
                      actores.add(rs.getString(2));
                    
                }
                
               
               
            
            }catch(Exception e){
                out.print("ocurrio un error: "+e);
            }
            pageContext.setAttribute("losActores",actores);
               
          
        %>
        
        <c:forEach var="resultados" items="${losActores}">
            <p> ${resultados}</p>
        </c:forEach>
    </body>
</html>
