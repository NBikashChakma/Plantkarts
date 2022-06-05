<%-- 
    Document   : signup
    Created on : May 24, 2022, 12:42:43 PM
    Author     : Bikash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign-Up</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %>
            </div>
            <%@include file="nav.jsp" %>

            <div class="row">
                <div class="col-lg-3"> </div>
                <div class="col-lg-4 bg-dark mt-1">
                    <form  method="post" action="SignUpServlet">
                        <fieldset class="form-group border p-3">
                            <legend class="w-auto" style="color:white">Sign Up</legend>
                            <div class="form-group">
                                <label style="color:white">Name</label>
                                <input type="text" name="user" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label style="color:white">Mobile</label>
                                <input type="text" name="mobile" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label style="color:white">Email</label>
                                <input type="email" name="email" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label style="color:white">Password</label>
                                <input type="password" name="password" class="form-control" required/>
                            </div>
                            <!--                         <div class="form-group">
                                                         <label>Confirm Password</label>
                                                         <input type="password" name="cpassword" class="form-control" required/>
                                                     </div>-->
                            <div class="form-group">
                                <input type="submit" value="sign Up" class="btn bg-success"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="reset" value="Reset" class="btn btn-warning"/> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="login.jsp" style="padding-left:5rem; color:white">Login</a>
                            </div>     
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <div class="row bg-info mt-3">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <center>
                    <a href="#" class="text-white" style="font-weight: 700">FAQ |</a>
                    <a href="#" class="text-white" style="font-weight: 700">Register |</a>
                    <a href="aboutus.jsp" class="text-white" style="font-weight: 700">About US |</a>
                    <a href="contactus.jsp" class="text-white" style="font-weight: 700">Contact Us</a><br>
                    <span class="text-white">&COPY; Plantkarts || 2019-2022</span><br>
                </center>
            </div>
            <div class="col-lg-3"></div>            
        </div>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
