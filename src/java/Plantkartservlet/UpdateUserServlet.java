/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Plantkartservlet;

import Plantkartaction.UpdatePersonAction;
import Plantkartbean.SignUpBean;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Bikash
 */
public class UpdateUserServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String user = request.getParameter("user");
        String mobile = request.getParameter("mobile");
        String pwd = request.getParameter("pwd");
        String address = request.getParameter("address");

        SignUpBean data = new SignUpBean();
        data.setEmail(email);
        data.setUser(user);
        data.setMobile(mobile);
        data.setPassword(pwd);
        data.setAddress(address);

        UpdatePersonAction ac = new UpdatePersonAction();
        boolean b = ac.updateUser(data);
        if (b == true) {
            response.sendRedirect("admin.jsp");
        }
    }

}
