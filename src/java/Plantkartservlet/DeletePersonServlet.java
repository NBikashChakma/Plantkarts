/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Plantkartservlet;

import Plantkartaction.SignUpAction;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Bikash
 */
public class DeletePersonServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        SignUpAction ac = new SignUpAction();
        boolean b = ac.deletePerson(email);
        if (b == true) {
            response.sendRedirect("admin.jsp");
        }
    }

}
