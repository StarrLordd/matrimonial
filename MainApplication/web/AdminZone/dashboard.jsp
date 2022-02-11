<%-- 
    Document   : dashboard
    Created on : Jul 29, 2018, 11:32:32 AM
    Author     : Amit Tripathi
--%>
<%
if(session.getAttribute("adid")==null)
{
     response.sendRedirect("index.jsp");
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="bootl.jsp"%>
        <style>
        .outer
        {
            min-height:650px;
        }
        .header
        {
            min-height:60px;
          //  background:red;
            font-size:50px;
            color:gray;
            margin-top:3%;
        }
        .a
        {
            min-height:50px;
            background:#ff5a60;
        }
        .us
        {
            color:#1570a5;
            font-size:30px;
            padding-left:7%;
        }
        
        .lef
        { 
            
            min-height:600px;
        }
        .rig
        {
            min-height:600px;
        }
        .up
        {
            min-height:120px;
            color:#d0d0d0;
            padding-top:3%;
            
        }
        .mi
        {
            min-height:70px;
            background:#d0d0d0;
            color:black;
            font-size:20px;
            padding-top:2%;
            padding-left:3%;
            margin-top:-2%;
        }
        .do
        {
            min-height:410px;
            padding-bottom:5%;
            padding-left:4%;
            
        }
        .dash
        {
            min-height:200px;
            box-shadow:3px 3px 10px black;
            margin-top:20%;
            color:white;
            
            cursor:pointer;
            
        }
        #upp
        {
            background:#1570a5;
            height:40px;
            width:60px;
            margin-top:8%;
            margin-left:3%;
            padding-top:3%;
            padding-left:7%;
            border-radius:10px 10px 10px 10px;
            cursor:pointer;
            box-shadow:3px 3px 10px black;
        }
        #dww
        {
            min-height:630px;
            background:#1570a5;
            margin-top:10%;
            display:block;   
        }
        #upp:hover
        {
            background:#32a2e4;
            transform:scale(1.2);
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
        </style>
    </head>
    <body>
        <div class="col-sm-12 outer">
            <div class="row">
                <div class="col-sm-12 text-center header">
                    <p style="font-size:20px;"><%out.print(session.getAttribute("adid"));%></p><br/>
                    <span class="fa fa-dashboard"></span> <span style="font-family: 'Eras Medium ITC';"> DASHBOARD</span>
                </div>
                <center>
                <div class="col-sm-12 mii">
                    <div class="col-sm-1 sii"></div>
                    <div class="col-sm-10">
                           <div class="col-sm-12 do">
                    <div class="col-sm-12">
                                <div class="col-sm-5">
                                    <div style="background:#1570a5;"
                                         class="col-sm-12 hvr-grow dash"><span style="font-size:100px;margin-top:10%;" class="text-center fa fa-users"></span>
                                        <p  style="margin-top:5%;font-size:20px">USER MANAGEMENT</p></div>
                                </div>
                                <div style="margin-left:5%;" class="col-sm-5">
                                    <div style="background:#842b99;" class="col-sm-12 hvr-grow dash">
                                        <span style="font-size:100px;margin-top:10%;" class="fa fa-check-circle"></span><p  style="margin-top:5%;font-size:20px">ADD SUCCESS STORY</p>
                                    </div>
                                </div>
                                
                    </div>
                                
                    <div class="col-sm-12">
                               
                                <div class="col-sm-5 qwe">
                                    <div style="background:#ff5a60;" 
                                        class="col-sm-12 hvr-grow dash">
                                        <span style="font-size:100px;margin-top:10%;" class="fa fa-info-circle"></span><p style="margin-top:5%;font-size:20px"> ADD NOTIFICATION</p>
                                    </div>
                                </div>
                        <div style="margin-left:6%;" class="col-sm-5">
                                  <a href="#">  <div style="background:#34495e;" 
                                        class="col-sm-12 hvr-grow dash">
                                          <span style="font-size:100px;margin-top:10%;" class="fa fa-sign-out"></span><p style="margin-top:5%;font-size:20px"> LOG OUT</p>
                                    </div>
                                  </a>
                                </div>
                    </div>
                        </div>
                    </div>
                    <div class="col-sm-1 sii"></div>
                </div>
                    </center>
            </div>
        </div>
    </body>
</html>
