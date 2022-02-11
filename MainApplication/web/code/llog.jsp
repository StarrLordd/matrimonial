<%-- 
    Document   : llog
    Created on : Jul 28, 2018, 10:58:37 PM
    Author     : Amit Tripathi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String a, b, c;
    a=request.getParameter("id");
    b=request.getParameter("pass");
    DBManager db=new DBManager();
    c="select * from login where Email='"+a+"' and Password='"+b+"'";
    ResultSet rs=db.ExecuteSelect(c);
    if(rs.next())
    {
        response.sendRedirect("../UserZone/Dash.jsp");
        session.setAttribute("uid",a);
    }
    else
    {
        out.print("<script>alert('Email or pass not matched');window.location.href='../login.jsp'</script>");
    }
%>