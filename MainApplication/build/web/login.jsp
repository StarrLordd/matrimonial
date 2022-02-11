<%-- 
    Document   : login
    Created on : Jul 28, 2018, 11:07:16 AM
    Author     : Amit Tripathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="link/boot.jsp" %>
         <style>
             <%@include file="link/style.css"%>
             .a1
             {
                 min-height:650px;
                 background:url('images/bacc.jpg');
                 background-size:100% 100%;
                 background-attachment:fixed;
             }
             .a2 .fa
             {
                 min-height:40px;
                 color:white;
                 font-size:50px;
                 margin-top:1.5%;
                 margin-left:3%;
                 
             }
             .main
             {
                 box-shadow:0 0 20px black;
                 min-height:700px;
                 background:rgba(0,0,0,.7);
                 margin-bottom:3%;  
             }
             .fm
             {
                 background:transparent;
                 border-top:none;
                 border-left:none;
                 border-right:none;
                 border-bottom:3px solid white;
                 border-radius:0px;
                 margin-top:3%;
                 color:white;
                 font-size:19px;
             }
             .fm::placeholder
             {
                 color:white;
                 font-size:22px;
                 font-family:'Bahnschrift SemiBold';
             }
             .fc
             {
                 margin-top:3%;
                 min-height:60px;
                 background:#ff5a60;
                 border:none;
                 color:#34495e;
                 font-size:30px;
             }
             .fc:hover
             {
                 background:#fb767b;
                 color:white;
             }
         </style>
    </head>
    <body>
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-12 a1">
                   <div class="col-sm-12 rg">
                    <div class="col-sm-12 a2">
                        
                         <a href="index.jsp"><span class="fa fa-home"></span></a>
                    </div>
                    <div class="col-sm-12">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6 main text-center" style="padding-top:10%;">
                            <b style="color:#ff5a60;font-size:50px;font-family:'Terminal'">BANDHAN </b> <br/>
                            <p style="color:white;font-size:30px;text-align:center;margin-top:4%;font-family:'Terminal'">Sign In</p>
                            
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <form action="code/llog.jsp" method="post">
                                <input type="email"  class="form-control fm" placeholder="Email" name="id" /><br/>
                            <input type="password" class="form-control fm" placeholder="Password" name="pass"/><br/>
                            <input type="submit"  value="LOG IN" class="form-control fc"/>
                            <br/><br/>
                            <p style="color:white;font-size:20px;text-align:center;margin-top:4%;">NOT REGISTERED <a href="registration.jsp"> CLICK HERE</a></p>
                                </form>  </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="col-sm-3"></div>
                    </div>
                       </div>
                </div>
               <%-- 
    Document   : footer
    Created on : Jul 22, 2018, 11:06:07 PM
    Author     : Amit Tripathi
--%>


 <div class="col-sm-12 iccc text-center">
            <b style="color:#ff5a60;font-size:30px;">FOLLOW US ON</b><br/>
            
                        <a href="https://www.facebook.com/Amit.roqs" target="_blank"><span class="fa fa-facebook-square ic"></span></a>
                        <a href="https://m.youtube.com/channel/UCwZQmhKcBuJSiHrasV-fCDw" target="_blank"><span class="t1 fa fa-youtube ic"></span></a>
                        <a href="#" target="_black"><span class="t1 fa fa-twitter ic"></span></a>
                        <a href="https://www.instagram.com/soft_amit/" target="_blank"><span class="t1 fa fa-instagram ic"></span></a>
                        <a href="#" target="_blank"><span class="t1 fa fa-google-plus-square ic"></span></a>
        </div>
        <div  class="col-sm-12 site">
            <div class="col-sm-4 text-center">
                <b class="tx1">Important Links</b><br/><br/>
                <p id="ply"><sapn class="ply fa fa-play"></sapn> <a href="#">About Us</a><br/>
                <sapn class="ply fa fa-play"></sapn> <a href="#">Privacy Policy</a><br/>
                <sapn class="ply fa fa-play"></sapn> <a href="#">Desclaimers</a><br/>
                <sapn class="ply fa fa-play"></sapn> <a href="#">Site Map</a><br/>
                <sapn class="ply fa fa-play"></sapn> <a href="#">Extra Site 1</a><br/>
                <sapn class="ply fa fa-play"></sapn> <a href="#">Extra Site 2</a><br/>
                <sapn class="ply fa fa-play"></sapn> <a href="#">Extra Site 3</a><br/>
                <sapn class="ply fa fa-play"></sapn> <a href="#">Extra site 4</a><br/></p>
            </div>
            <div class="col-sm-4 text-center">
                <b class="tx1">Contact Information</b>
                <div id="ply1"><P>HOUSE NO. 629, VILL- MYOHAR, <BR/>POST- MYOHAR THANA- KARARI, 
                     <br/> HOME TOWN- SARAI AKIL,<BR/> TAHSEEL- MANJHANPUR,<br/> DISTRIC KAUSHAMBI,<br/> PIN 212216,<br/> Mobile No. +91 9559740092<P></div>
            </div>
            <div class="col-sm-4 text-center">
                <b class="tx1">Quick Contact</b>
                <div id="ply2">
                    <form action="#" method="post">
                    <input type="text" placeholder="Enter Your Name" class="form-control" name="name"/>
                    <br/>
                    <input type="email" placeholder="Enter Email" class="form-control" name="email"/><br/>
                    <textarea name="txt" class="form-control" rows="3" style="resize: none;" placeholder="Enter Your Massage"></textarea><br/>
                    <input type="submit" value="Cancle" class="cn form-control"/>
                    <input type="submit" value="Submit" class="sm form-control"/>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-sm-12 bfooter">
            <p style="color:white;text-align: center;font-size:14px;margin-top:2%;"> Conceptualized and encoded By : <b>Amit Tripathi</b>.  <br/>
                &copy All Right Reserved.</p>
        </div>

            </div>
        </div>
        
    </body>
</html>
