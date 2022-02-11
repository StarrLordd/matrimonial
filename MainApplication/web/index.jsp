<%-- 
    Document   : home
    Created on : Jul 18, 2018, 8:49:31 AM
    Author     : Amit Tripathi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="test.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <%@include file="link/boot.jsp" %>
       <script>
           var a=document.getElementById("lock");
           window.onscroll=function()
           {
               if(window.pageYOffset>100)
               {
               a.style.position="fixed";
               a.style.top=0;
               } 
               else
               {
                   a.style.position="absolute";
                   a.style.top=100;
               }
           }
       </script>
        <style>
            <%@include file="link/style.css" %>
#lock
{
    position:absolute;
    left:250px;
}
.noti
{
    min-height:35px;
    background:rgba(0,0,0,.5);
    position:absolute;
    bottom:0px;
    color:white;
    font-size:18px;
    padding-top:.9%;
}
.ss
{
    height:60px;
}
.se
{
    height:60px;
    float:right;
    border-radius:0px 10px 10px 0px;
    line-height:60px;
    font-size:30px;
    color:white;
    cursor:pointer;
    text-align:center;
    background:#d9475c;
}
.se:hover
{
    background:#d9475d;
}
#idd
{
    height:100%;
    width:83.29%;
    border:none;
    font-size:30px;
    background:rgba(255,255,255,0.8);
    padding-left:2%;
}
#idd::placeholder
{
    color:#000000;
}
        </style>
    </head>
    <body>
        <div class="col-sm-12 outer">
            <div class="row">
                <div class="col-sm-12 back">
                    <div class="row">  
                        <div class="col-sm-2"></div>
                        <div id="lock" class="col-sm-8 men">
                           <div class="row">
                                <div class="col-sm-2 lft">
                                     <img src="images/logo.png" class="img-responsive" height="70px;" alt=""/>
                                </div>
                               <div class="col-sm-8 cent">
                                   <span style="cursor:pointer;color:white;font-size:13px;">
                                       <li class="dropdown lll" >
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">BROWSED PROFILES BY<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li> 
                                       
                                   </span> 
                                    
                                   <span style="cursor:pointer;margin-left:8%;color:white;font-size:13px;">
                                   <li class="dropdown lll">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SEARCH<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li> </span>
                                     <span style="cursor:pointer;margin-left:10%;color:white;font-size:13px;">
                                     HELP
                                       
                                       
                                    
                                     <a href="login.jsp">     <span style="cursor:pointer;margin-left:18%; color:white;font-size:13px;">
                                    LOGIN
                                    <span class="fa fa-user"></span></span></a>
                                   
                               </div>
                               <a href="registration.jsp"><div class="col-sm-2 rit text-center" style="color:white;padding-top:1%;cursor:pointer;">REGISTER FREE</div></a>
                            </div>
                       </div>
                       <div class="col-sm-2"></div>   
                    </div>
                    <p  style="color:white;font-size:35px;padding-top:17%;" class="text-center">
                        Love is looking for you. Be found.
                    </p>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8 ss">
                                <input type="text" id="idd" placeholder="Search for Bride / Groom"/>
                                <a href="registration.jsp"><div class="col-sm-2 se"><span class="fa fa-search"></span></div></a>
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                        <p style="color:white;padding-left:64%;padding-top: 1.5%;"><a style="color:white;text-decoration:none;" href="login.jsp">Search by Profile ID</a> | Advanced Search</p>
                        
                    </div>
                    <div class="row">
                        <div class="col-sm-12 noti">
                       
                       <%
                        DBManager db=new DBManager();
                        String ab="select Notification from notification order by Sr desc limit 0,4;";
                        ResultSet rs=db.ExecuteSelect(ab);
                        String bb="";
                        while(rs.next())
                        {
                            bb+=rs.getString("Notification")+"<sup><img src='images/a_1.gif'/></sup>&nbsp;&nbsp;&nbsp";
                        }
                    %>
                     <marquee behavior="alternate" onmouseover="stop()" onmouseleave="start()"><%out.print(bb);%></marquee>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 pnk text-center">The one you are perfect for, is waiting for you to log on.</div>
                <div class="col-sm-12 pnk1">
                    <div class="col-sm-6">
                        <img src="images/00-7.jpg" id="mmg" height="200px" width="70%" class="img-responsive" alt=""/>
                    </div>
                    <div class="col-sm-6 ttt">
                        You believe in soulmates, so do we.
<br/>
Connect with your perfect one here, on Jeevansathi.<br/><br/>

While you do so, we take utmost care of your Privacy & Security.
<br/>
We ensure 100% Screening of profiles, Verified Stamp on those
<br/>
we've met in person and Advanced Privacy Settings.
<br/>
<a href="registration.jsp"><input type="button"  value="Rregister Free" id="btn"/></a>
                    </div>
                </div>    
                
            </div>
        </div>
        
        <div class="col-sm-12 aim">
            <div class="col-sm-2"></div>
            <div id="aam" class="col-sm-8 text-center">
                
                <b style=";color:#ff5a60;font-size:30px;">OUR AIM</b><br/>
                <div class="text-justify" style="padding-left:18%;">
                <p><span class=" fa fa-asterisk"></span> Our Organizations main motive is to help people find happiness.</p>
                <p><span class="fa fa-asterisk"></span> Online matrimonial portal which help people to find brides / bridge - 
                groom of their choices.</p>
                <p><span class="fa fa-asterisk"></span> Easy to understand and user friendly way to reach desired audience.</p>
                <p><span class="fa fa-asterisk"></span> Its aim not only connect two individuals but two families or you can 
                    say two communities as a whole.</p>
                <p><span class="fa fa-asterisk"></span> All the  details available of bride / grooms and their families as well
                are real and verified as well.</p>
                <p><span class="fa fa-asterisk"></span> Bandhan is amerging with a aim of bringing revolution in the communities.</p>
            </div></div>
            <div class="col-sm-2"></div>
        </div>
        
        <div class="col-sm-12 story">
            <div class="col-sm-5" style="margin-top:4%;margin-left: 3%;font-size:25px;font-family:Lucida Calligraphy;color:white;font-weight: bold;">Your story is waiting to happen!</div>
            <a href="registration.jsp">  <div class="col-sm-3 strt text-center hvr-bounce-in">Get Started</div></a>
        </div>
        <div class="col-sm-12 mab">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 about">
           &nbsp &nbsp &nbsp &nbsp &nbsp <b style="color:#ff5a60">Bandhan</b>, one of India's best known brands and the world's largest matrimonial
            service was founded with a simple objective - to help people find happiness. The The company pioneered online
            matrimonial  since many years and continues to lead the exciting matrimony category after more than a decade. By 
            redefining the way Indian bridges and groom meet for marriage, <b>Bandhan</b> has created a world-renowned that has touched
            over millions people. Our website Bandhan was established with only one ambition keeping in mind that is distributing 
            happiness all over community as whole. Our Orgnization Bandhan helps families of different communities, societies or
            caste get bridge or groom easily of their choice.<br/>&nbsp &nbsp &nbsp &nbsp Team<b style="color:#ff5a60">
                Bandhan.com</b> is a set of hardworking people, with a mission, 
                and a promise. <b>Team Bandhan.com</b> is dedicated to providing you with the ultimate partner search experience and 
            believes that no other matchmaking service can provide you with the value that Bandhan.com can. So much so,
            that our service is backed by an unconditional guarantee.

Please take some time to get to know us better through the links that we have provided on this page.
Perhaps the information will help you decide if we are the right solution for you or somebody you know.

I thank you for visiting us and hope that we can help you meet the right person.
        </div>
        <div class="col-sm-2"></div>
        </div>
        <div class="col-sm-12 mtd">
            <p class="text-center" style="color:#5c6d7b;font-size:40px;margin-top:4%;">Matched By Bandhan</p>
            <div style="margin-top: 1%" class="col-sm-12">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="col-sm-3 mmm">
                        <img src="images/img1.jpg" class="hvr-shadow img-responsive" height="200px" alt=""/>
                        <p style="margin-top:6%;margin-left: 25%;color:#5c6d7b;">Smit weds Jyoti</p>
                    </div>
                    <div class="col-sm-3 mmm">
                        <img src="images/img2.jpg" class="hvr-shadow img-responsive" height="200px" alt=""/>
                        <p style="margin-top:6%;margin-left: 25%;color:#5c6d7b;">Angad weds Ankita</p>
                    </div>
                    <div class="col-sm-3 mmm">
                        <img src="images/img3.jpg" class="hvr-shadow img-responsive" height="200px" alt=""/>
                        <p style="margin-top:6%;margin-left: 25%;color:#5c6d7b;">Omkara weds Rohini</p>
                    </div>
                    <div class="col-sm-3 mmm">
                        <img src="images/img4.jpg" class="hvr-shadow img-responsive" height="200px" alt=""/>
                        <p style="margin-top:6%;margin-left: 25%;color:#5c6d7b;">Amir weds Sayna</p>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
        
        
        <%@include file="link/footer.jsp" %>
        <!---BUTTON--->
        <div class="col-sm-1" data-toggle="modal" data-target="#mmdl" id="bttn"><span class="fa fa fa-comments st"></span></div>
        <!--modal-->
        <div class="modal fade mod" id="mmdl">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="background:#d9475c;color:white;font-size: 30px;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <p class="modal-title text-center" style="">ENQUIRY</p>
      </div>
      <div class="modal-body bd">
       <p class="text-center" style="font-size:20px;">Welcome! Let's start your partner search with this Sign up.</p>
      <div class="col-sm-12 reg">
          
                       <form action="code/encode.jsp" method="post">
              <input type="text" placeholder="Enter your Name" name="name" class="form-control f"/><br/>
              <input type="emain" placeholder="Enter your Email" name="email" class="form-control f"/> <br/>
              <input type="number" placeholder="Enter your Number"name="mob" class="form-control f"/><br/>
              <textarea placeholder="Enter your Massage..." name="msg" class="form-control f"></textarea>
                       
                  
      </div>
      </div>
        <br/>
      <div class="modal-footer">
        <input type="submit" style="background:#18bb9c;color:white;" value="Register Now" class="form-control"/>
            </form>          
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
        
   
      
    </body>
</html>
