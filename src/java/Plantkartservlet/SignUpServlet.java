/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Plantkartservlet;

import Plantkartaction.SignUpAction;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Plantkartbean.SignUpBean;

/**
 *
 * @author Bikash
 */
public class SignUpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String name = request.getParameter("user");
        String address = request.getParameter("address");
        String password = request.getParameter("password");

        SignUpBean data = new SignUpBean();
        data.setEmail(email);
        data.setMobile(mobile);
        data.setUser(name);
        data.setAddress(address);
        data.setPassword(password);

        SignUpAction ac = new SignUpAction();
        boolean b = ac.signUpRegister(data);
        if (b == true) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }

}
