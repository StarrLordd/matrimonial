<%-- 
    Document   : adlogin
    Created on : Jul 30, 2018, 7:37:46 PM
    Author     : Amit Tripathi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     try
     {
         DBManager db= new DBManager();
         String a, b, c;
         a=request.getParameter("user");
         b=request.getParameter("pass");
         c="Select * from adlog where Email='"+a+"' and Password='"+b+"'";
         ResultSet re=db.ExecuteSelect(c);
         if(re.next())
         {
             session.setAttribute("adid",a);
             response.sendRedirect("../AdminZone/dashboard.jsp");
         }
         else
         {
             out.print("<script>alert('Illegel Opration');window.location.href='../AdminZone/index.jsp'</script>");
         }
     }
     catch(Exception ex)
     {
         
     }
%>
