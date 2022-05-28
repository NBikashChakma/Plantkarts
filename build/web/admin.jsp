<%-- 
    Document   : admin
    Created on : May 24, 2022, 12:43:13 PM
    Author     : Bikash
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Plantkartaction.SignUpAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %>
            </div>
            <%@include file="nav.jsp" %>
            <!--            <h1>Hello Admin!</h1>-->

            <%
                String email = null;
                HttpSession sess = request.getSession();

                if (sess != null) {
                    email = sess.getAttribute("adminsessionid").toString();
                } else {
                    response.sendRedirect("login.jsp");
                }

            %>
            <h1>Welcome : <%=email%></h1>
            <a href="logout.jsp">Logout</a>


            <div class="row">
                <div class="col-lg-12">
                    <center><p class="display-4 mt-4" style="font-size: 40px">User Register ID Information</p></center>  
                </div>
            </div>

            <table class="table table-dark table-bordered">
                <tr>
                    <th>SNO</th>
                    <th>EMAIL</th>
                    <th>NAME</th>
                    <th>MOBILE</th>
                    <th>PASSWORD</th>
                    <th>DELETE</th>
                </tr>

                <%
                    SignUpAction ac = new SignUpAction();
                    ResultSet rs = ac.getCustomers();
                    int i = 1;
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><a href="#"><img src="img/delete.png" style="width:30px;height: 30px"/></a></td>
                </tr>

                <%
                    i++;
                    }
                %>

            </table>   
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
