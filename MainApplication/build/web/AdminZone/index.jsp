<%-- 
    Document   : index
    Created on : Jul 28, 2018, 7:03:44 PM
    Author     : Amit Tripathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="bootl.jsp" %>
        <style>
            .outer
            {
                min-height: 650px;
                background: #0095da;
                padding-top: 10%;
            }
            .login
            {
                background: #f0f0f0;
                min-height: 300px;
                padding: 2%;
            }
            .form-control
            {
                height:50px;
            }
            .input-group-addon
            {
                background:#0095da;
                color:white;
            }
        </style>
    </head>
    <body>
       <div class="col-sm-12 outer">
           <div class="col-sm-4"></div>
           <div class="col-sm-4 login">
               <div class="text-center h2">LOGIN HERE.. <span class="fa fa-key">
                        </span>
                   
               </div>
               <form action="../code/adlogin.jsp" method="post" >
                       EMAIL
                       <div class="input-group">
              <span class="input-group-addon"><span class="fa fa-user"> </span></span>
                           <input type="email" name="user" class="form-control"/>
                       </div>
                       PASSWORD
                        <div class="input-group">
              <span class="input-group-addon"><span class="fa fa-key"> </span></span>
                           <input type="password" name="pass" class="form-control"/>
                        </div><br>
         <input type="submit" value="LOGIN" class="form-control" style="
                background:#0095da;color:white"/>
               </form>
                       
                  
           </div>
                           <div class="col-sm-4"></div>
            </div>
    </body>
</html>
