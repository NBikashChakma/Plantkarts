<%-- 
    Document   : logout
    Created on : May 25, 2022, 6:19:07 PM
    Author     : Bikash
--%>
<%-- 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
--%>
<%
    session.removeAttribute("userSessionid");
    session.removeAttribute("adminsessionid");
    response.sendRedirect("index.jsp");
%>