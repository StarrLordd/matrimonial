<%-- 
    Document   : Dash
    Created on : Jul 23, 2018, 11:17:16 PM
    Author     : Amit Tripathi
--%>
<%
if(session.getAttribute("uid")==null)
{
     response.sendRedirect("../login.jsp");
}
%>
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
        <script>
function amit()
{
var a=document.getElementById("dww");

var ac=a.style.display;
if(ac!="block")
{
a.style.display="block";
}

else
{
a.style.display="none";
}
}
</script>

    <style>
        <%@ include file="../link/style.css"%>
        .a
        {
            min-height:50px;
            background:#ff5a60;
            position:fixed;
            z-index:10;
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
            
        }
        .dash
        {
            min-height:220px;
            box-shadow:3px 3px 10px black;
            margin-top:20%;
            color:white;
            font-size:30px;
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
                <div class="col-sm-12 a">
                    <div class="col-sm-8"></div>
                    <div class="col-sm-4 us"><span class="fa fa-user"></span>  <span style="color:white;font-size:20px;"> <% out.print(session.getAttribute("uid"));%> </span> </div>
                </div>
                <br/><br/>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-3 lef">
                            <div class="row">
                                
                               
                                <div onclick="amit()" id="upp">
                                    <span style="color:white;font-size:20px;" class="fa fa-bars"></span>
                                </div>
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
                        <div class="col-sm-9 rig">
                           
                            <div class="col-sm-12 up">
                                <span style="font-size:50px;float:left;margin-top:.5%;" class="fa fa-dashboard"></span>
                                <p style="font-size:50px;float:left;font-family:' Eras Medium ITC';">DASHBOARD</p>
                                 <p style="font-size:20px;float:left;margin-top:3%;margin-left:1%;"> WELCOME TO BANDHAN</p>
                            </div>
                        <div class="col-sm-12 mi">
                                <span style="float:left;margin-top:.5%;" class="fa fa-home"></span> 
                                <p style="float:left;margin-left:1%">HOME</p> 
                                 <span style="float:left;margin-left:1%;margin-top:.3%;" class="fa fa-angle-right"></span>
                                 <p style="float:left;margin-left:1%;">DASHBOARD</p>
                             </div>
                            <div class="col-sm-12 do">
                    <div class="col-sm-12">
                       <div class="col-sm-4">
                                    <a href="match.jsp">  <div style="background:#1570a5;"
                                         class="col-sm-12 hvr-grow dash"><span style="font-size:120px;margin-left:25%;margin-top:10%;" class="fa fa-users"></span>
                                        <p style="font-size:23px;margin-left:25%"> MATCHED PROFILE </p></div>
                         </a>   </div>
                                <div class="col-sm-4">
                                <a href="forme.jsp">     <div style="background:#842b99;" class="col-sm-12 hvr-grow dash">
                                        <span style="font-size:120px;margin-left:25%;margin-top:10%;" class="fa fa-share"></span>
                                        <p style="font-size:23px;margin-left:25%"> REQUEST FOR ME</p>
                                    </div></a>
                                </div>
                                <div class="col-sm-4">
                                     <a href="fromme.jsp">  <div style="background:#29b677;" class="col-sm-12 hvr-grow dash">
                                        <span style="font-size:120px;margin-left:25%;margin-top:10%;" class="fa fa-reply"></span><p style="font-size:23px;margin-left:25%"> REQUEST FROM ME</p>
                                    </div></a>
                                </div>
                    </div>
                                
                    <div class="col-sm-12">
                                <div class="col-sm-4">
                                    <a href="accreq.jsp"><div style="background:#ff0000;" class="col-sm-12 hvr-grow dash">
                                        <span style="font-size:120px;margin-left:25%;margin-top:10%;" class="fa fa-check-circle"></span><p style="font-size:23px;margin-left:25%"> ACCEPTED REQUEST</p>
                                    </div></a>
                                </div>
                                <div class="col-sm-4">
                                    <a href="MyPro.jsp"><div style="background:#ffb748;" 
                                        class="col-sm-12 hvr-grow dash">
                                            <span  style="font-size:120px;margin-left:25%;margin-top:10%;" class="fa fa-user"></span> <p style="font-size:23px;margin-left:25%">MY PROFILE</p>
                                        </div></a>
                                </div>
                        <div class="col-sm-4">
                                  <a href="logout.jsp">  <div style="background:#34495e;" 
                                        class="col-sm-12 hvr-grow dash">
                                          <span style="font-size:120px;margin-left:25%;margin-top:10%;" class="fa fa-sign-out"></span> <p style="font-size:23px;margin-left:25%">LOG OUT</p>
                                    </div>
                                  </a>
                                </div>
                    </div>
                        </div>
                    </div>
                </div>
                </div>
             <%@include file="../link/footer.jsp"%>
        
        </div>
        </div>
    </body>
</html>
