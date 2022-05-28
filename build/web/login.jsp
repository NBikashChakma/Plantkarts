<%-- 
    Document   : login
    Created on : May 24, 2022, 9:07:58 PM
    Author     : Bikash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
        <link href="css/sweetalert.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
<!--        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">-->
        <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %>
            </div>
            <%@include file="nav.jsp" %>
            <div class="row mt-3">
                <div class="col-lg-4">

                </div>
                <div class="col-lg-4">
                    <form method="post" action="LoginServlet">
                        <fieldset class="border p-3">
                            <legend class="w-auto">Login</legend>
                            <div class="form-group btn-secondary btn-lg">
                                <input type="radio" name="person" value="user" required/>&nbsp;User&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="person" value="admin" required/>&nbsp;Admin&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="form-group">
                                <lebal>User</lebal>
                                <input type="text" name="user" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <lebal>PASSWORD</lebal>
                                <input type="password" name="password" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="Log In" class="btn btn-success"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="forgotPassword.jsp">Forget Password</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="signup.jsp">Create an account</a>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="col-lg-4">

                </div>
            </div>
        </div>
        <!--            <script type="text/javascript">
                        var status = document.getElementById("status").value;
        //                if (status == "failed"){
        //                    swal("Sorry","Wrong Username or Password", "error");
        //                }
        //                else if(status == "invalidEmail"){
        //                    swal("Sorr","Please Enter Username","error");
        //                }
        //                else if(status == "invalidPassword"){
        //                    swal("Sorry","Please Enter Password","error");
        //                }
                         if(status == "resetSuccess"){
                            swal("Congrats","Password Reset Successful","Success");
                        }
                        else if(status == "resetFailed"){
                            swal("Sorry","Password Rest Failed","error");
                        }
                    </script>-->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script> 
        <script src="js/jquery.min.js"></script> 
        <script src="js/main.js"></script> 
        <script src="js/sweetalert.min.js"></script> 
    </body>
</html>
