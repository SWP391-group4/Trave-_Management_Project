/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOBooking extends connectDB{
    
    public List<Booking> getBooking(String accountC) {
        List<Booking> l= new ArrayList<>();
        String sql = "select * from booking where accountC = "+accountC;
        PreparedStatement pre;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, accountC);
            
            ResultSet rs = getData(sql);
            while(rs.next()) {
                l.add(new Booking(
                        accountC, 
                        rs.getString(2), 
                        rs.getInt(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getString(7), 
                        rs.getInt(8), 
                        rs.getInt(9), 
                        rs.getString(10), 
                        rs.getString(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOBooking.class.getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }
}
