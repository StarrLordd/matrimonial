<%-- 
    Document   : MyProfile
    Created on : Jul 25, 2018, 6:07:10 PM
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
             .us
        {
            color:#1570a5;
            font-size:30px;
            padding-left:7%;
        }
            .a
        {
            min-height:50px;
            background:#ff5a60;
        }
            </style>
    </head>
    <body>
        <div class="col-sm-12">
            <div class="row">
               <div class="col-sm-12 a">
                     <div class="col-sm-8"></div>
                    <div class="col-sm-4 us"><span class="fa fa-user"></span>  <span style="color:white;cursor:pointer;font-size:20px;"> <% out.print(session.getAttribute("uid"));%> </span> </div>
                
                </div>
                <%
              //  out.print(session.getAttribute("uid"));
              DBManager db=new DBManager();
              String a="select * from reg where Email='"+session.getAttribute("uid")+"'";
              ResultSet rs=db.ExecuteSelect(a);
              if(rs.next())
              {
                 
              
                %>
                <div class="col-sm-12">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <center><h2>MY PROFILE <span class="fa fa-user"></span></h2></center>
                        <hr/>
                         <form action="../updata"  method="post" enctype="multipart/form-data" >
                        <div class="col-sm-12">
                          
                            <div class="col-sm-4">
                                  <input type="text" name="em" value="<%out.print(rs.getString(6));%>"/>
                                  <br/>
                                <img src="../AdminZone/img/<%out.print(rs.getString(16));%>" height="300px" width="280px" style="border:4px solid black;" alt=""/>
                                <br/>
                              
                                <input type="file" name="pic" class="form-control" placeholder="aaaaa.jap"/>
                                <input type="submit" value="CHANGE PASSWORD" class="btn btn-default form-control" style="margin-top:30%;color:white;font-size:25px;text-shadow:0px 0px 10px black;"/>
                            </div>
                            
                                     
                            <div class="col-sm-8">
                                <div class="col-sm-12" style="margin-bottom:2%;">
                                     <div class="col-sm-6" style="font-family:'Times New Roman';font-size:18px;color:red;">
                                        NAME:<br/>
                                        <input type="text" value="<%out.print(rs.getString(2)); %>" name="name" class="form-control"/><br/>
                                        GENDER:<br/>
                                        <input type="text" value="<%out.print(rs.getString(4)); %>" name="gen" class="form-control"/><br/>
                                         FATHER NAME : <br/>
                                        <input type="text" name="fn" value="<%out.print(rs.getString(3)); %>" class="form-control"/><br/>
                                        QUALIFICATION:<br/>
                                       
                                       <select name="ql" class="form-control for">
                                <option><%out.print(rs.getString(5)); %></option>
                                <option>P.hd.</option>
                                <option>MASTER IN DEGREE</option>
                                <option>BACHLAR IN DEGREE</option>
                                <option>POST GRADUATE</option>
                                <option>UNDERGRADUATE</option>
                                <option>DEPLOMA</option>
                            </select><br/>
                                        OCCUPATION:<br/>
                                       <input type="text" value="<%out.print(rs.getString(8)); %>" name="occ" class="form-control"/><br/>
                                       
                                         HEIGHT:<br/>
                                        
                                        <select name="ht" class="form-control for">
                                 <option><%out.print(rs.getString(11)); %></option>
                                 <option>140 Inch</option>
                                 <option>141 Inch</option>
                                 <option>142 Inch</option>
                                 <option>143 Inch</option>
                                 <option>144 Inch</option>
                                 <option>145 Inch</option>
                                 <option>146 Inch</option>
                                 <option>147 Inch</option>
                                 <option>148 Inch</option>
                                 <option>149 Inch</option>
                                 <option>150 Inch</option>
                                 <option>151 Inch</option>
                                 <option>152 Inch</option>
                                 <option>153 Inch</option>
                                 <option>154 Inch</option>
                                 <option>155 Inch</option>
                                 <option>156 Inch</option>
                                 <option>158 Inch</option>
                                 <option>159 Inch</option>
                                 <option>160 Inch</option>
                                 <option>161 Inch</option>
                                 <option>162 Inch</option>
                                 <option>163 Inch</option>
                                 <option>164 Inch</option>
                                 <option>165 Inch</option>
                                 <option>166 Inch</option>
                                 <option>167 Inch</option>
                                 <option>168 Inch</option>
                                 <option>169 Inch</option>
                                 <option>170 Inch</option>
                                 <option>171 Inch</option>
                                 <option>172 Inch</option>
                                 <option>173 Inch</option>
                                 <option>174 Inch</option>
                                 <option>175 Inch</option>
                                 
                                 
                                 </select><br/>
                                         MOTHER TOUNGH:<br/>
                                      
                                        <select name="mt" class="form-control for">
                                <option><%out.print(rs.getString(14)); %></option>
                                <option>HINDI</option>
                                <option>ENGLISH</option>
                                <option>MARATHI</option>
                                <option>PUNJABI</option>
                                <option>GUJRAATI</option>
                                <option>HARYANVI</option>
                                <option>OTHER</option>
                            </select><br/>
                                        <input type="submit" value="UPDATE PROFILE" style="color:white;font-size:25px;text-shadow:0px 0px 10px black;" class="btn btn-default  form-control"/>
                                    </div>
                                    <div class="col-sm-6" style="font-family:'Times New Roman';font-size:18px;color:red;">
                                         MOBILE:<br/>
                                        <input type="number" name="num" value="<%out.print(rs.getString(7)); %>" class="form-control"/><br/>
                                         DOB:<br/>
                                        <input type="date" name="dob" value="<%out.print(rs.getString(15)); %>" class="form-control"/><br/>
                                        FATHER OCCUPATION:<br/>
                                        <input type="text" value="<%out.print(rs.getString(10)); %>" name="fo" class="form-control"/><br/>
                                         CITY:<br/>
                                        <input type="text" value="<%out.print(rs.getString(17)); %>" name="city" class="form-control"/><br/>
                                         DESIGNATION:<br/>
                                        <input type="text" value="<%out.print(rs.getString(9)); %>" name="dg" class="form-control"/><br/>
                                         RELIGION:<br/>
                                      
                                       <select name="rl" class="form-control for">
                                <option><%out.print(rs.getString(13)); %></option>
                                <option>HINDU</option>
                                <option>MUSLIM</option>
                                <option>CRISTION</option>
                                <option>OTHER</option>
                            </select><br/>
                                        NATIONALITY:<br/>
                                         <select name="nlty" class="form-control for">
                                <option><%out.print(rs.getString(12)); %></option>
                                <option>INDIAN</option>
                                <option>OTHER</option>
                            </select><br/>
                                        <a href="Dash.jsp">  <input type="cancle" style="color:white;font-size:25px;text-shadow:0px 0px 10px black;"   value="CANCLE" class="btn btn-default  form-control"/>
                                        </a></div>
                                </div>
                            </div>
                         
                        </div> </form>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
                <%@include file="../link/footer.jsp" %>
            </div>
            <%
            }
            %>
        </div>
    </body>
</html>
