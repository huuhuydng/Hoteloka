/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Hung Bui
 */
public class DBContext {
    protected Connection connection;
    public DBContext() {
        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SWP391_GROUP1;encrypt=false;trustServerCertificate=false;loginTimeout=30";
            String username = "sa";
            String password = "123456";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public static void main(String[] args) {
        DBContext db = new DBContext();
        try {
            System.out.println(db.connection);
        } catch (Exception e) {
        }
    }
    
}
