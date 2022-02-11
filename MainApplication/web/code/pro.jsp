<%-- 
    Document   : pro
    Created on : Aug 20, 2018, 8:53:34 PM
    Author     : Amit Tripathi
--%>

<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
       String a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v;
       a=request.getParameter("name");
       b=request.getParameter("fn");
       c=request.getParameter("gen");
       d=request.getParameter("ql");
       e=request.getParameter("num");
       f=request.getParameter("oc");
       g=request.getParameter("dg");
       h=request.getParameter("fo");
       i=request.getParameter("ht");
       j=request.getParameter("nlty");
       k=request.getParameter("rl");
       l=request.getParameter("mt");
       m=request.getParameter("dob");
       n=request.getParameter("city");
       DBManager db=new DBManager();
       String cmd="update reg set Name='"+a+"', FName='"+b+"', Gender='"+c+"', Quali='"+d+"', Contact='"+e+"', Occupation='"+f+"', Designation='"+g+"', FOccupation='"+h+"', Height='"+i+"', Nationality='"+j+"', Rel='"+k+"', MToungh='"+l+"',DOB='"+m+"', Address='"+n+"' where Email='"+session.getAttribute("uid")+"'";
       boolean bb=db.ExecuteInserUpdateDelete(cmd);
       if(bb=true)
       {
           out.print("<script>alert('Profile update Succesfully');window.location.href='../UserZone/upp.jsp';</script>");
       }
       else
       {
           out.print("<script>alert('Profile update Failed');window.location.href='../UserZone/upp.jsp';</script>");
       }
%>
