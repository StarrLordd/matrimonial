<%-- 
    Document   : Myprofile1.jsp
    Created on : 25 Jul, 2018, 6:08:22 PM
    Author     : Yogesh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <%@include file="../MasterPage/link1.jsp" %>
      <style>
          .box{
              height:40px;
          }
      </style>
    </head>
    <body> 
        <%@include file="../MasterPage/header1.jsp" %>
        <%
       //out.print(session.getAttribute("userid"));
     DBManager db=new DBManager();
     String cmd="select * from tbl_registration where Email='"+request.getParameter("Email")+"'";
     ResultSet rs=db.ExecuteSelect(cmd);
     if(rs.next())
     {
        %>
        <div class="col-sm-12">
            <div class="col-sm-1"></div>
            <div class="col-sm-10" style="background:#f4f4f4;margin-top:1%;margin-bottom:1%; ">
                <center><span style="font-size:58px;color:black;" class="fa fa-user"></span>&nbsp; <span style="color:black;font-size:58px;font-family:Comic Sans MS;padding-top: 30px; "> <b style="color:red">Profile</b></span> </center>
                <hr>
                <div class="col-sm-12">
                    <div class="col-sm-4" style="padding-top: 4%;">
                <img src="../images/user.jpg" class="img-responsive" height="300px" width="300px" />
                        <br>
                        <span style="font-family: times new roman;font-size: 20px;color:red;"> Name </span>:<br>
                        <input type="text" name="name" value="<% out.print(rs.getString(2)); %>"  class="form-control box"/>
                     </div>
                    <div class="col-sm-8">
                        <div class="col-sm-12" style="margin-bottom: 3%;">
                        <div class="col-sm-6" style="font-family: times new roman;font-size: 20px;color:red;">
                            Gender :<br>
                            <input type="text" name="gender" value="<% out.print(rs.getString(3)); %>"  class="form-control box"/>
                             Father's Name:<br>
                            <input type="text" name="fname" value="<% out.print(rs.getString(5)); %>"  class="form-control box"/>
                              Higher Qualification:<br>
                            <input type="text" name="hquali" value="<% out.print(rs.getString(6)); %>"  class="form-control box"/>
                             height :<br>
                            <input type="text" name="height" value="<% out.print(rs.getString(11)); %>"  class="form-control box"/>
                             Nationality :<br>
                            <input type="text" name="nation" value="<% out.print(rs.getString(12)); %>" class="form-control box"/> 
                             Religion :<br>
                            <input type="text" name="reli" value="<% out.print(rs.getString(13)); %>" class="form-control box"/> 
                        </div>
                        <div class="col-sm-6" style="font-family: times new roman;font-size: 20px;color:red;">
                               DOB :<br>
                            <input type="text" name="dob" value="<% out.print(rs.getString(4)); %>"  class="form-control box"/> 
                              Contact Number:<br>
                            <input type="number" name="contact" value="<% out.print(rs.getString(7)); %>"  class="form-control box"/> 
                            Email :<br>
                            <input type="email" name="email" value="<% out.print(rs.getString(8)); %>"  class="form-control box"/> 
                              Occupation :<br>
                            <input type="text" name="occup" value="<% out.print(rs.getString(9)); %>" class="form-control box"/>
                             Father,s Occupation :<br>
                            <input type="text" name="foccup" value="<% out.print(rs.getString(10)); %>" class="form-control box"/> 
                             Mother Toungh :<br>
                            <input type="text" name="mother" value="<% out.print(rs.getString(14)); %>" class="form-control box"/> 
                            <a href="Dashboard.jsp"><input type="button" value="Back To Home" style="background:#ff5a60;border:none;color:white;font-family: times new roman;" class="btn btn-default form-control box"/></a>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="col-sm-1"></div>
            <%
            }
            %>
        </div>
      <%@include file="../MasterPage/footer1.jsp" %>

    </body>
</html>
