<%@page import="test.DBManager"%>
<%
String email=request.getParameter("email");
DBManager db=new DBManager();
String cmd="update mreq set status='Accepted' where ReqBy='"+email+"' and ReqTo='"+session.getAttribute("uid")+"'";
boolean b=db.ExecuteInserUpdateDelete(cmd);
if(b==true)
{
out.print("<script>alert('Thank you for acepting request.');window.location.href='../UserZone/forme.jsp';</script>");
}
%>