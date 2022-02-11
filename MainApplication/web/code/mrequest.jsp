<%-- 
    Document   : mrequest
    Created on : Jul 29, 2018, 7:54:35 PM
    Author     : Amit Tripathi
--%>

<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
//out.print(session.getAttribute("uid"));
//out.print(request.getParameter("email"));
DBManager db=new DBManager();
String cmd="insert into mreq(ReqBy,ReqTo,ReqDate,Status)values('"+session.getAttribute("uid")+"','"+request.getParameter("Email")+"',curdate(),'Pending')";
boolean res=db.ExecuteInserUpdateDelete(cmd);
if(res==true)
{
    cmd="update reg set req=1 where email='"+session.getAttribute("uid")+"' or email='"+request.getParameter("email")+"'";
    boolean res1=db.ExecuteInserUpdateDelete(cmd);
    if(res1==true)
    {
        
    }
    out.print("<script>alert('REQUET SEND SUCCESSFULLY');window.location.href='../UserZone/match.jsp'</script>");
}
%>