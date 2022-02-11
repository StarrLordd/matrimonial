<%-- 
    Document   : registration
    Created on : Jul 22, 2018, 1:37:33 AM
    Author     : Amit Tripathi
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         
         <%@include file="link/boot.jsp" %>
        <style>
            
            <%@include file="link/style.css" %>
            .head
            {
                min-height: 70px;
                background:#ff5a60;
                color:white;
            }
            .bakk
            {
                min-height:1000px;
                background:url('images/Ground-of-Delhi-Matrimony.jpg');
                background-attachment:fixed;
                background-size:100% 100%;
            }
            .rgg
            {
                min-height:800px;
                background:rgba(50,125,190,.7);
                margin-top:2%;
                margin-left:5%;
                padding-top:4%;
            }
            .for
            {
                width:70%;
                margin-left:28%;
                
            }
        </style>
    </head>
    <body>
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-12 head">
                    <a href="index.jsp">  <div class="col-sm-4">
                        <span style="color:white;font-size: 50px;margin-left:5%;margin-top:2.5%;" class="fa fa-home"></span>
                        </div>  </a>
                   
                   <form action="code/llog.jsp" method="post">
                   <div  style="padding-top:1%;" class="col-sm-3">
                       <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-user"></span>
                                    
                                    </span>
                           
                      <input type="email" name="id" required class="form-control" placeholder="Enter Your Email"/>
                      </div>
                      <input type="checkbox"/> KEEP ME LOGGED IN
                      
                   </div>
                       <div style="padding-top:1%;" class="col-sm-3">
                           <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-key"></span></span>
                      <input type="password" name="pass" class="form-control" required placeholder="Enter Your Password"/>     
                           </div>
                           <a style="text-decoration:none;color:white;" href="#">FORGOTTEN PASSWORD</a>
                               
                       </div>
                   
                    <div class="col-sm-2" style="padding-top:1%;">
                        <input type="submit" class="form-control" style="background:#327dbe;color:white;" value="LOG IN"/>
                    </div> 
                    </form>       
                </div>
                <div class="col-sm-12 bakk">
                    <p style="color:white;font-size:30px;margin-left:25%;margin-top:5%;font-family:'Times New Roman';text-shadow:5px 5px 20px black;">IT'S TIME OF YOUR STORY, START YOUR STORY NOW</p>
                  
                    <div class="col-sm-2"></div>
                    <div  class="col-sm-8 rgg">
                        <B style="color:#ff5a60;font-size:30px;margin-left:30%;">REGISTER HERE...</B>
                        <hr/>
                       
                        <form action="Reg"  method="post" enctype="multipart/form-data" >
                            <p style="float:left;font-size:18px;margin-top:1%;color:white;"> NAME </p>
                            <input type="text" name="name" required class="form-control for" placeholder="Enter Yourt Name"/><br/>
                            <p style="float:left;color:white;font-size:18px;margin-top:1%;"> FATHER'S NAME </p>
                            <input type="text" name="fname" required class="form-control for" placeholder="Enter Yourt Father Name"/><br/>
                            <p style="color:white;float:left;font-size:18px;margin-top:1%;">GENDER</p>
                               <select name="gen" required class="form-control for">
                                <option>--Select--</option>
                                 <option>MALE</option>
                                <option>FEMALE</option>
                                
                            </select> 
                            <br/>
                            <p style="color:white;float:left;font-size:18px;margin-top:1%;"> HIGHEST QUALI. </p>
                            <select name="qual" required class="form-control for">
                                <option>--Select--</option>
                                <option>P.hd.</option>
                                <option>MASTER IN DEGREE</option>
                                <option>BACHLAR IN DEGREE</option>
                                <option>POST GRADUATE</option>
                                <option>UNDERGRADUATE</option>
                                <option>DEPLOMA</option>
                            </select><br/>
                             <p style="color:white;float:left;font-size:18px;margin-top:1%;">EMAIL ID </p>
                                 <input  type="email" required class="form-control for" name="email" placeholder="Enter your Email"/>
                            <br/>
                             
                            <p style="float:left;color:white;font-size:18px;margin-top:1%;">MOBILE NUMBER </p>
                                 <input type="number" required class="form-control for" name="mob" placeholder="Enter YOur Mobile Number"/>
                                 <br/><p style="float:left;color:white;font-size:18px;margin-top:1%;">OCCUPATION </p>
                                 <input type="text" required class="form-control for" name="occu" placeholder="Enter YOur Occupation"/><br/>
                                 <p style="float:left;color:white;font-size:18px;margin-top:1%;">YOUR DESIGNATION </p>
                                 <input type="text" required class="form-control for" name="desig" placeholder="Enter YOur Designation"/><br/>
                                 <p style="float:left;color:white;font-size:18px;margin-top:1%;">FATHER'S OCCU. </p>
                                 <input type="text" required class="form-control for" name="foccu" placeholder="Enter Father's Occupation"/><br/>
                                 <p style="float:left;color:white;font-size:18px;margin-top:1%;">YOUR HEIGHT </p>
                                 <select name="height" required class="form-control for">
                                 <option>--Select--</option>
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
                                 <p style="float:left;color:white;font-size:18px;margin-top:1%;">NATIONALITY</p>
                                 <select name="nat" required class="form-control for">
                                <option>--Select--</option>
                                <option>INDIAN</option>
                                <option>OTHER</option>
                            </select><br/>
                                <p style="float:left;color:white;font-size:18px;margin-top:1%;">RELIGION</p>
                                 <select name="rel" required  class="form-control for">
                                <option>--Select--</option>
                                <option>HINDU</option>
                                <option>MUSLIM</option>
                                <option>CRISTION</option>
                                <option>OTHER</option>
                            </select><br/>
                                <p style="float:left;color:white;font-size:18px;margin-top:1%;">MOTHER TOUNGH</p>
                                 <select name="mt" required class="form-control for">
                                <option>--Select--</option>
                                <option>HINDI</option>
                                <option>ENGLISH</option>
                                <option>MARATHI</option>
                                <option>PUNJABI</option>
                                <option>GUJRAATI</option>
                                <option>HARYANVI</option>
                                <option>OTHER</option>
                            </select><br/>
                             
                             <p style="float:left;color:white;font-size:18px;margin-top:1%;">DATE OF BIRTH </p>
                                 <input type="date" required name="dob" class="form-control for"/><br/>
                                 <p style="float:left;color:white;font-size:20px;margin-top:1%;margin-left:0%;">PROFILE</p>
                                 <input type="file" required class="form-control for" name="pic"/><br/>
                                
                             <p style="float:left;color:white;font-size:18px;margin-top:1%;">ADDRESS</p>
                                <textarea style="resize:none;" required name="add" class="form-control for" rows="5"></textarea><br/>    
                             <p style="float:left;color:white;font-size:18px;margin-top:1%;">PASSWORD</p>
                                 <input type="password" required class="form-control for" name="pass"/><br/>
                            <p style="float:left;color:white;font-size:18px;margin-top:1%;">CONFIRM PASS..</p>
                                <input type="password" required class="form-control for" name="cpass"/><br/>
                            
                          <div class="text-center" style="padding-top:1.3%;background:rgba(52,73,92,.5);
                               color:white;color:white;margin-left:28.5%;font-size:20px;height:50px; width:100px;"> <span>
                               <%
                                   final String alfa="0123456789ABCDEFGHabcdefgh#$&*!";
                                   final int n=alfa.length();
                                   String val="";
                                   Random r=new Random();
                                   for(int i=0;i<=5;i++)
                                   {
                                       val+=alfa.charAt(r.nextInt(n));
                                   }
                                   out.print(val);
                               %>
                               </span></div>
                               <br/>
                               <input type="hidden" required name="cap" value="<% out.print(val); %>"/>
                               <p style="color:white;float:left;font-size:18px;margin-top:1%;">ENTER CAPTCHA </p>
                           <input type="text" required class="form-control for" name="captcha" placeholder="Enter code"/>
                          
<script src="../../Bandhan/web/js/jquery.js"></script>
<script>
$(document).ready(function(){
$("#chk").change(function(){
var a=$("#bttn1").prop("disabled");
if(a==true)
$("#bttn1").prop("disabled",false);
else
$("#bttn1").prop("disabled",true);
});
});
</script>
<input id="chk" type="checkbox" /><span style="color:white;font-size:20px;"> I am agreed to <a style="color:green" href="#">Terms & Condition</a></span>


                           <br/>
                           <input type="submit" style="margin-left:28%;width:40%;font-size:30px;background:#ff5a60;color:white;margin-bottom:5%;height:60px;" id="bttn1" disabled  value="Register Now" class="form-control"/>
                        </form>
                    </div>
                               <div class="col-sm-2"></div>
                </div>
                 <%@include file="link/footer.jsp" %>
            </div>
               
        </div>
        
    </body>
</html>
