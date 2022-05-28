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
                <div class="col-lg-6">
                    <form  method="post" action="SignUpServlet">
                        <fieldset class="border p-3">
                            <legend class="w-auto">Sign Up</legend>
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="user" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="text" name="mobile" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" required/>
                            </div>
                            <!--                         <div class="form-group">
                                                         <label>Confirm Password</label>
                                                         <input type="password" name="cpassword" class="form-control" required/>
                                                     </div>-->
                            <div class="form-group">
                                <input type="submit" value="sign Up" class="btn bg-success"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="reset" value="Reset" class="btn bg-info"/> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="login.jsp">Already have an account? Login</a>
                            </div>     
                        </fieldset>
                    </form>
                </div>
            </div>


        </div>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
