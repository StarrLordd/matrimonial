<%-- 
    Document   : logout
    Created on : Jul 23, 2018, 11:20:01 PM
    Author     : Amit Tripathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
       
    </head>
    <body onload="logout()">
       
        <%
           session.invalidate();
        %>
        <script>
           function logout()
           {
               window.history.forward;
               window.setTimeout("window.location.href='../login.jsp'",1000);
           }
        </script>
        
    </body>
</html>
