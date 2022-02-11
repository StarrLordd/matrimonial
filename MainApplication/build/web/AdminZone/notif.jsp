<%-- 
    Document   : notif
    Created on : Jul 25, 2018, 3:48:23 PM
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
       
        <div class="col-sm-12">
            <div class="row">
               
                <div class="col-sm-12">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4" style="background:gray;min-height: 400px;margin-top:5%;border:4px solid black;padding:5%;"><h3>ADD NOTIFICATION<hr/></h3>
                        <span style="font-size:16px;font-family:'Times new roman';">NOTIFICATION DISCRIPTION</span>
                    <br/>
                    <form action="../code/ncode.jsp" method="post">
                    <textarea class="form-control" name="txt" rows="5" placeholder="Enter Notification here....." style="resize:none;"></textarea>
                    <input type="submit" class="btn btn-primary" value="ADD NOW">
                    </form>
                    </div>
                    <div clASS="col-sm-4"></div>
                </div>
            </div>
        </div>
    </body>
</html>
