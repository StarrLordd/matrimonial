 <%-- 
    Document   : addstory
    Created on : Jul 25, 2018, 3:11:37 PM
    Author     : Amit Tripathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="bootl.jsp"%>
    </head>
    <body>
      
       
            
            <div class="col-sm-12" style="background:url('../images/00-7.jpg');min-height:600px;background-size:100% 100%;">
                <div class="col-sm-12" style="background:rgba(0,0,0,.5);min-height:600px;">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-5" style="min-height:500px;background:rgba(255,255,255,.5);margin-top:3%;">
                        <center><h2>Add Success Story</h2></center>
                        <hr/>
                        <form action="../Story" method="post" enctype="multipart/form-data">
                        <span>NAme</span>
                        <input type="text" class="form-control" name="name" placeholder="Name"/><br/>
                        <span>MDate</span>
                        <input type="date" class="form-control" name="date" placeholder="marrige DATE"/><br/>
                        <span>Des</span>
                        <input type="text" class="form-control" name="des" class="dec" placeholder="Discription"/><br/>
                        <span>PHOTO</span>
                        <input type="file" class="form-control" name="pic" placeholder="pic"/><br/>
                        <input type="submit" value="Add Story" class="btn btn-primary"/>
                        </form>
                        
                    </div>
                </div>
            </div>
        
    </body>
</html>
