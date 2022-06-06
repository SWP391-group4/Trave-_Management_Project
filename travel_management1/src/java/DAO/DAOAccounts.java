/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Accounts;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nam
 */
public class DAOAccounts extends connectDB {
    public Accounts search(String account, String password) {
        String sql = "select * from accounts where "
                + "account = '"+account+"'and "
                + "password =+ '"+password+"'";
        ResultSet rs = getData(sql);
        try {
            if(rs.next()) {
                
              return new Accounts(
                      rs.getString(1), 
                      rs.getString(2),
                      rs.getString(3),
                      rs.getInt(4));   
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }
    public static void main(String[] args) {
        DAOAccounts dao = new DAOAccounts();
        System.out.println(dao.search("sangxx", "123456"));
    }

}