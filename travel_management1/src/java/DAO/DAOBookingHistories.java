/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.*;
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
public class DAOBookingHistories extends connectDB{
    public List<BookingHistories> getBooking(String accountC) {
        List<BookingHistories> l = new ArrayList<>();
        String sql = "select * from bookingHistories where accountC = '" + accountC + "'";

        try {
            ResultSet rs = getData(sql);
            while (rs.next()) {
                l.add(new BookingHistories(
                        rs.getString(1), 
                        rs.getString(2), 
                        rs.getInt(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getString(7), 
                        rs.getInt(8), 
                        rs.getInt(9), 
                        rs.getString(10), 
                        rs.getInt(11), 
                        rs.getString(12), 
                        rs.getString(13)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOBooking.class.getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }
    
    public List<HomeStays> getHomestay(List<BookingHistories> listBookingHis) {
        DAOHomeStays daoHomestay = new DAOHomeStays();
        List<HomeStays> listHomestays =  new ArrayList<>();
        for (BookingHistories o : listBookingHis) {
            listHomestays.add(daoHomestay.getHomestay(o.getHomeStayId()));
        }
        return listHomestays;
    }
    
}
