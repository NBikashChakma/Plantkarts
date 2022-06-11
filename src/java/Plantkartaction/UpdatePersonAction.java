/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Plantkartaction;

import Plantkartbean.SignUpBean;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.Statement;
import dbconnection.PlantkartDBConnect;

/**
 *
 * @author Bikash
 */
public class UpdatePersonAction {

    public boolean updateUser(SignUpBean data) {
        boolean b = false;
        try {
            Connection con = PlantkartDBConnect.getPlantkartDBConnection();
            java.sql.PreparedStatement ps = con.prepareStatement("update signup set name=?, mobile=?, password=?, address=? where email=? ");
            ps.setString(1, data.getUser());
            ps.setString(2, data.getMobile());
            ps.setString(3, data.getPassword());
            ps.setString(4, data.getAddress());
            ps.setString(5, data.getEmail());
            int i = ps.executeUpdate();
            if (i > 0) {
                b = true;
            }
        } catch (Exception e) {
        }
        return b;
    }

}
