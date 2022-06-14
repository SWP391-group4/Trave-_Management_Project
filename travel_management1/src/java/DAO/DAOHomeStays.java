/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;

import Entity.HomeStays;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOHomeStays extends connectDB{
    public HomeStays search(String homeStayID) {
        String sql = "select * from accounts where "
                + "homeStayID = '"+homeStayID+"'";
        ResultSet rs = getData(sql);
        try {
            if(rs.next()) {
                
              return new HomeStays(
                      rs.getString(1), 
                      rs.getString(2),
                      rs.getString(3));   
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }
}
