/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnection;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Bikash
 */
public class PlantkartDBConnect {

    public static final String user = "root";
    public static final String password = "3434!Natun?!%@$#";
    public static final String url = "jdbc:mysql://localhost:3306/plantkarts?useSSL=false";
    public static Connection con = null;

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
        }
    }

    public static Connection getPlantkartDBConnection() {
        try {
            con = (Connection) DriverManager.getConnection(url, user, password);
            //con = DriverManager.getConnection(url, url, password);
        } catch (Exception e) {
        }
        return con;
    }
}
