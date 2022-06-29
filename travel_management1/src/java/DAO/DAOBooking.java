/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Booking;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author phams
 */
public class DAOBooking extends connectDB{
    public int addBooking(Booking book) {
        int n = 0;
        String sql = "insert Stores(stor_id,stor_name,stor_address,city,state,zip) "
                + "values ('" + s.getStor_id() + "','" + s.getStor_name() + "','" + s.getStor_address() + "','" + s.getCity() + "','" + s.getStates() + "','" + s.getZip() + "')";
        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
}
