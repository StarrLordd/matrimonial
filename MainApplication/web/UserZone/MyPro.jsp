<%-- 
    Document   : MyPro
    Created on : Jul 25, 2018, 10:50:28 AM
    Author     : Amit Tripathi
--%>

<%
if(session.getAttribute("uid")==null)
{
     response.sendRedirect("../login.jsp");
}
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <style>
            <%@ include file="../link/style.css"%>
            .a
        {
            min-height:50px;
            background:#ff5a60;
        }
        .b
        {
             min-height:600px;
        }
        .left
        {
            min-height:600px;
            background:#1570a5;
        }
        .right
        {
            min-height:600px;
            background:#e3f2e1;
        }
         #dww
        {
            min-height:630px;
            background:#1570a5;
            margin-top:10%;
            display:block;   
        }
        .mm
        {
            min-height:60px;
            color:white;
            font-size:18px;
            padding-top:6%;
        }
        .mm:hover
        {
            background:#ff0000;
            border:1px solid white;
            box-shadow:2px 2px 10px black;
        }
        .us
        {
            color:#1570a5;
            font-size:30px;
            padding-left:7%;
        }
       .dis
       {
           min-height:200px;
           
           margin-top:1%;
       }
       .img
       {
           min-height:200px;
           
           
       }.name
       {
           padding-left:6%;
       }
       input:hover
       {
           box-shadow:5px 5px 20px black;
       }
        </style>
    </head>
    <body>
        <%
              //  out.print(session.getAttribute("uid"));
              DBManager db=new DBManager();
              String a="select * from reg where Email='"+session.getAttribute("uid")+"'";
              ResultSet rs=db.ExecuteSelect(a);
              if(rs.next())
              {
                 
              
                %>
    
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-12 a">
                     <div class="col-sm-8"></div>
                    <div class="col-sm-4 us"><span class="fa fa-user"></span>  <span style="color:white;cursor:pointer;font-size:20px;"> <% out.print(session.getAttribute("uid"));%> </span> </div>
                
                </div>
                <div class="col-sm-12 b">
                    <div class="row">
                        <div class="col-sm-3 left">
                            <div  class="row">
                            <div id="dww" class="col-sm-12">
                                    <div class="row">
                                        <a href="Dash.jsp"><div class="col-sm-12 mm"><span class="fa fa-dashboard"></span> DASHBOARD
                                                <span style="position:absolute;right:5%;" class="fa fa-angle-right"></span>
                                        </div></a>
                                        <a href="match.jsp"><div class="col-sm-12 mm">
                                                <span class="fa fa-users"></span> MATCHED PROFILE
                                            <span style="position:absolute;right:5%;" class="fa fa-angle-right"></span></div></a>
                                        <a href="forme.jsp"><div class="col-sm-12 mm">
                                                <span class="fa fa-reply"></span> REQUEST FOR ME
                                                <span style="position:absolute;right:5%;" class="fa fa-angle-right"></span></div></a>
                                        <a href="fromme.jsp"><div class="col-sm-12 mm">
                                                <span class="fa fa-share"></span> REQUEST FROM ME
                                            <span style="position:absolute;right:5%;" class="fa fa-angle-right"></span></div></a>
                                       <a href="accreq.jsp"><div class="col-sm-12 mm">
                                               <span class="fa fa-check-circle"></span> ACCEPTED REQ.
                                           <span style="position:absolute;right:5%;" class="fa fa-angle-right"></span></div></a>
                                       <a href="MyPro.jsp"><div class="col-sm-12 mm">
                                               <span class="fa fa-user"></span> MY PROFILE
                                           <span style="position:absolute;right:5%;" class="fa fa-angle-right"></span></div></a>
                                       <a href="logout.jsp"><div class="col-sm-12 mm">
                                               <span class="fa fa-sign-out"></span> LOG OUT
                                           <span style="position:absolute;right:5%;" class="fa fa-angle-right"></span></div></a>
                                    </div>
                                </div>
                                </div>
                        </div>
                        <div class="col-sm-9 right">
                            <div style="margin-top:5%;font-size:40px;" 
                                 class="col-sm-12 text-center"><b>MY</b> <b style="color:#ff5a60;">PROFILE</b>
                                <span style="color:#ff5a60;" class="fa fa-user"></span></div>
                                <br/>
                                <div class="col-sm-12 dis">
                                    <div class="row">
                                        <div class="col-sm-3 img">
                                            
                                            <img src="../AdminZone/img/<%out.print(rs.getString(16));%>" style="border-radius:50%;height:70%;width:100%;"   class="img-responsive" alt=""/>
                                            </div>
                                        <div class="col-sm-9 name">
                                            <p Style="font-size:30px;margin-top:5%;color:#1570a5;"><%out.print(rs.getString(2)); %></p>
                                            <p Style="font-size:20px;color:#1570a5;"><%out.print(rs.getString(8)); %></p>
                                            <p Style="font-size:20px;color:#1570a5;">DATE OF BIRTH: <%out.print(rs.getString(15)); %></p>
                                            <a href="upp.jsp"><input type="button" style="height:30px;width:30%;margin-top:30%;border:none;color:white;background:#1570a5;" value="UPDATE PROFILE"/></a>
                                            <a href="Dash.jsp"><input type="button" style="height:30px;width:30%;margin-top:30%;border:none;color:white;background:red;margin-left:5%;" value="BACK TO HOME"></a>
                                        </div>
                                    </div>
                                </div>
                          
                            </div>
                            <span></span>
                        </div>
                    </div>
                </div>
                <%@include file="../link/footer.jsp"%>
            </div>
        </div>
          <%
            }
            %>
    </body>
</html>
