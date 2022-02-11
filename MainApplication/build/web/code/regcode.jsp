<%-- 
    Document   : regcode
    Created on : Jul 26, 2018, 12:11:03 AM
    Author     : Amit Tripathi
--%>

<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
      String a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v;
      a=request.getParameter("name");
      b=request.getParameter("fname");
      c=request.getParameter("gen");
      d=request.getParameter("qual");
      e=request.getParameter("email");
      f=request.getParameter("mob");
      g=request.getParameter("occu");
      h=request.getParameter("desig");
      i=request.getParameter("foccu");
      j=request.getParameter("height");
      k=request.getParameter("nat");
      l=request.getParameter("rel");
      m=request.getParameter("mt");
      n=request.getParameter("dob");
      o=request.getParameter("pic");
      p=request.getParameter("add");
      q=request.getParameter("pass");  
      
      r=request.getParameter("cpass");
      s=request.getParameter("cap");
      t=request.getParameter("captcha");
      
     if(q.equals(r))
      {
          if(s.equals(t))
          { 
      DBManager db=new DBManager();
      v="insert into reg(Name,Fname,Gender,Quali,Email,Contact,Occupation,Designation,FOccupation,Height,Nationality,Rel,MToungh,DOB,Photo,Address,Date)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"','"+p+"',curdate())";
     boolean w=db.ExecuteInserUpdateDelete(v);
  
     if(w==true)
      {
         String sent="insert into login(Email,Password)values('"+e+"','"+q+"')";
          db.ExecuteInserUpdateDelete(sent);
          out.print("<script>alert('REGISTRATION SUCCESSFULL');window.location.href='../registration.jsp'</script>");
      }
      else
      {
          out.print("<script>alert('REGISTRATION CAN NOT SUCCESS');window.location.href='../registration.jsp'</script>");
      }
      }
      else
      {
          out.print("<script>alert('CAPTCHA NOT MATCH');window.location.href='../registration.jsp'</script>");
      }
      }
      else
      {
          out.print("<script>alert('PASSWORD NOT MATCH');window.location.href='../registration.jsp'</script>");
      }
      
%>