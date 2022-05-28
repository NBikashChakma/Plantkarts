<%-- 
    Document   : user
    Created on : May 24, 2022, 12:43:40 PM
    Author     : Bikash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %>
            </div>
            <%@include file="nav.jsp" %>
            <!--            <h1>Hello User!</h1>-->

            <%
                String email = null;
                HttpSession sess = request.getSession();

                if (sess != null) {
                    email = sess.getAttribute("userSessionid").toString();
                } else {
                    response.sendRedirect("login.jsp");
                }

            %>
            <h1>Welcome : <%=email%></h1>
            <a href="logout.jsp">Logout</a>
        </div>
        <div class="row bg-info mt-5">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <center>
                    <a href="#" class="text-white" style="font-weight: 700">FAQ |</a>
                    <a href="#" class="text-white" style="font-weight: 700">Register |</a>
                    <a href="#" class="text-white" style="font-weight: 700">About US |</a>
                    <a href="#" class="text-white" style="font-weight: 700">Contact Us</a><br>
                    <span class="text-white">&COPY; Plantkarts || 2019-2022</span><br>
                </center>
            </div>
            <div class="col-lg-3"></div>            
        </div>    

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
