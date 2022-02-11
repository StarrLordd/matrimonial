<%-- 
    Document   : Matchedprofile
    Created on : 23 Jul, 2018, 6:58:09 PM
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
          
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
         <link href="../link/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .h
            {
                min-height:50px;
                background:#ff5a60;
            }
            .hh1
            {
                 min-height:50px;
                 font-size:25px;
                 color:white;
            }
             .hh2
            {
                 min-height:50px;
            }
             .hh3
            {
                 min-height:50px;
                 font-size:25px;
                 color:white;
            }
        </style>
        
    </head>
    <body>
        <div class="col-sm-12 ">
            <div class="row">
                <div class="col-sm-12 h">
                    <div class="col-sm-4 hh1">
                        <a href="Dash.jsp">  <span style="color:white;font-size:50px;" class="fa fa-home"></span></a>
                    </div>
                    <div class="col-sm-4 hh2">
                       
                    </div>
                    <div class="col-sm-4 hh3">
                        <span class="fa fa-user"></span>  <span><% out.print(session.getAttribute("uid"));  %></span>
                    </div>
                </div>
                    <div class="text-center h1"><b style=" color:#ff5a60;font-family:Comic Sans MS;">Request FROM ME <span class="fa fa-users"></span></b></div>
                <div class="col-sm-12"  style="background:#f0f0f0">
                
        <% 
           
            DBManager db=new DBManager();
           
          // out.print(rs.getString("Gender"));
      String cmd="select * from mreq where  ReqBy='"+session.getAttribute("uid")+"'";
       ResultSet rs1=db.ExecuteSelect(cmd);
       while(rs1.next())
       {
          String cmd1="select * from reg where email='"+rs1.getString("ReqTo")+"'";
          ResultSet rs2=db.ExecuteSelect(cmd1);
          if(rs2.next())
          {
           %>
           <div class="col-sm-3 " style="margin-top:2%;margin-bottom:1%;padding-bottom: 1%;">
                <div class="col-sm-12" style="background:pink; color:black;font-size: 25px;min-height:270px;">
                    <div class="row">
                    <div class="col-sm-12 text-center">
                          <span style="font-size:20px">  <%out.print(rs2.getString("Name")); %></span>
                    </div>
                     <div class="col-sm-12" >
                         
                        <center>
                         
                            <img src="../AdminZone/img/<%out.print(rs2.getString(16));%>" style="margin-top: 3%;padding-top: 2%;height: 130px;width:130px;"/></center>
                    </div> 
                    <div class="col-sm-12">
                        <a href="viewprofile.jsp?email=<%out.print(rs2.getString("email"));%>">
                            <input type="button" value="View Profile" class="btn btn-default"/></a>
                        
                            
                    </div> 
                     </div>
                </div>
                </div>
                    
              
           <%
           }
       }
            %>
            <div class="row">
            <%@ include file="../link/footer.jsp"%>
              </div></div>
                   
            </div>
        </div>
    </body>
</html>
