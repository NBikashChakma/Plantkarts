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
                String emailid=request.getParameter("email");

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
                    <th>ADDESS</th>
                    <th>DELETE</th>
                    <th>UPDATE</th>
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
                    <td><%=rs.getString(5)%></td>
                    <td><a href="DeletePersonServlet?email=<%=rs.getString(1)%>" onclick="return confirm('Are you sure want to delete?')"><img src="img/delete.png" style="width:30px;height: 30px"/></a></td>
                    <td><a href="admin.jsp?email=<%=rs.getString(1)%>" class="btn btn-success btn-sm">Update</a></td>
                </tr>
                <!-- alert hle only ok button but confirm use this two button add cancel option-->
                <%
                    i++;
                    }
                %>

            </table>   
            <%
                rs.beforeFirst();
                String id=null,name=null,mobile=null,address=null,password=null;
                while(rs.next())
                {
                    if(rs.getString(1).equals(emailid))
                    {
                     id=rs.getString(1);
                     name=rs.getString(2);
                     mobile=rs.getString(3);
                     password=rs.getString(4);
                     address=rs.getString(5);
                    }
                }
            %>
            <div id="update" class="modal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4>Update User</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form method="post" action="UpdateUserServlet">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" value="<%=id%>" class="form-control" name="email"/>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" value="<%=name%>" class="form-control" name="user"/>
                                </div>
                                <div class="form-group">
                                    <label>Mobile</label>
                                    <input type="text" value="<%=mobile%>" class="form-control" name="mobile"/>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" value="<%=password%>" class="form-control" name="pwd"/>
                                </div>
                                <div class="form-group">
                                    <label>Addess</label>
                                    <input type="address" value="<%=address%>" class="form-control" name="address"/>
                                </div>
                                <input type="submit" value="Update User" class="btn btn-success"/>
                            </form>
                        </div>
                        <div class="modal-footer">

                        </div>
                    </div>
                </div>

            </div>   
        </div>
        <div class="row bg-info mt-5">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <center>
                    <!--                    <a href="#" class="text-white" style="font-weight: 700">FAQ |</a>
                                        <a href="#" class="text-white" style="font-weight: 700">Register |</a>
                                        <a href="#" class="text-white" style="font-weight: 700">About US |</a>
                                        <a href="#" class="text-white" style="font-weight: 700">Contact Us</a><br>-->
                    <span class="text-white">&COPY; Plantkarts || 2019-2022</span><br>
                </center>
            </div>
            <div class="col-lg-3"></div>            
        </div>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <%
            if(emailid!=null)
            {
                
        %>
        <script>
                        $(document).ready(function ()
                        {
                            $("#update").modal('show');
                        }
                        );
        </script>
        <%
            }
        %>
    </body>
</html>
