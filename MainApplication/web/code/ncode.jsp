<%-- 
    Document   : ncode
    Created on : Jul 25, 2018, 4:16:46 PM
    Author     : Amit Tripathi
--%>

<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try
    {
String a, b;
a=request.getParameter("txt");
DBManager db=new DBManager();
b="insert into Notification(Notification,Date)values('"+a+"',curdate())";
boolean c=db.ExecuteInserUpdateDelete(b);

if(c==true)
{
    out.print("<script>alert('NOTIFICATION ADD SUCCESSFULLY');window.location.href='../AdminZone/notif.jsp'</script>");
}
else
{
   out.print("<script>alert('NOTIFICATION CAN NOT SEND');window.location.href='../AdminZone/notif.jsp'</script>");
}
    }
    catch(Exception Ex)
    {
           out.print("<script>alert('SOME ERROR OCCURED');window.location.href='../AdminZone/notif.jsp'</script>");

    }
%>