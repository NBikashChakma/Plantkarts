/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Plantkartservlet;

import Plantkartaction.LoginAction;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Bikash
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String person = request.getParameter("person");
        String email = request.getParameter("user");
        String password = request.getParameter("password");

        LoginAction ac = new LoginAction();
        boolean b = ac.checkUser(email, password);
        if (person.equals("user")) {
            if (b == true) {
                HttpSession session = request.getSession();
                session.setAttribute("userSessionid", email);
                response.sendRedirect("user.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }
        }

        if (person.equals("user")) {

        } else if (person.equals("admin")) {
            boolean bl = ac.checkAdmin(email, password);
            if (bl == true) {
                HttpSession session = request.getSession();
                session.setAttribute("adminsessionid", email);
                response.sendRedirect("admin.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        }
    }

}
