<%-- 
    Document   : encode
    Created on : Jul 22, 2018, 10:09:58 AM
    Author     : Amit Tripathi
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%   
           String a, b, c, d, e, f;
           a=request.getParameter("name");
           b=request.getParameter("email");
           c=request.getParameter("mob");
           d=request.getParameter("msg");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/application","root","");
           e="insert into enq(Name,Email,Contact,Massage,Date) values('"+a+"','"+b+"','"+c+"','"+d+"',curdate())";
           PreparedStatement st=con.prepareStatement(e);
           st.execute();
           out.print("<script>alert('Massage Sent Successfully!!');window.location.href='../home.jsp';</script>");
        %>
        
    </body>
</html>
