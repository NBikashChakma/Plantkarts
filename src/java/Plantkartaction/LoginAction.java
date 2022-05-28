/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Plantkartaction;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import dbconnection.PlantkartDBConnect;
import java.sql.ResultSet;

/**
 *
 * @author Bikash
 */
public class LoginAction {

    static Connection con = PlantkartDBConnect.getPlantkartDBConnection();

    public boolean checkUser(String email, String password) {
        boolean b = false;
        try {
            //Connection con = PlantkartDBConnect.getPlantkartDBConnection();
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from signup where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                b = true;
            } else {
                b = false;
            }
        } catch (Exception e) {

        }
        return b;
    }

    public boolean checkAdmin(String email, String password) {
        boolean b = false;
        try {
            //Connection con = PlantkartDBConnect.getPlantkartDBConnection();
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from admin where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                b = true;
            } else {
                b = false;
            }
        } catch (Exception e) {
        }
        return b;
    }

}
