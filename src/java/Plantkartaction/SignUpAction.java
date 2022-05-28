/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Plantkartaction;

import Plantkartbean.SignUpBean;
import java.sql.Connection;
import java.sql.Statement;
import dbconnection.PlantkartDBConnect;
import java.sql.ResultSet;

/**
 *
 * @author Bikash
 */
public class SignUpAction {

    static Connection con = PlantkartDBConnect.getPlantkartDBConnection();

    public boolean signUpRegister(SignUpBean data) {
        boolean b = false;
        try {
//            Connection con = PlantkartDBConnect.getPlantkartDBConnection();
            Statement smt = con.createStatement();
            int i = smt.executeUpdate("insert into signup  (email,name,mobile,password)  values('" + data.getEmail() + "','" + data.getUser() + "','" + data.getMobile() + "','" + data.getPassword() + "')");
            if (i > 0) {
                b = true;
            } else {
                b = false;
            }
        } catch (Exception e) {
        }
        return b;
    }

    public ResultSet getCustomers() {
        ResultSet rs = null;
        try {
            Statement smt = con.createStatement();
            rs = smt.executeQuery("select * from signup");
        } catch (Exception e) {
        }
        return rs;
    }

    public boolean deletePerson(String email) {
        boolean b=false;
        try {
            Statement smt=con.createStatement();
            int i=smt.executeUpdate("delete from signup where email='"+email+"'");
            if(i<0)
                b=true;
        } catch (Exception e) {
        }
        return true;
    }

}
