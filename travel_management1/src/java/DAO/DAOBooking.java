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
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOBooking extends connectDB {

    public List<Booking> getBooking(String accountC) {
        List<Booking> l = new ArrayList<>();
        String sql = "select * from booking where accountC = '" + accountC + "'";

        try {
            ResultSet rs = getData(sql);
            while (rs.next()) {
                l.add(new Booking(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getString(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOBooking.class.getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }

    public List<HomeStays> getHomestay(List<Booking> listBooking) {
        DAOHomeStays daoHomestay = new DAOHomeStays();
        List<HomeStays> listHomestays = new ArrayList<>();
        for (Booking o : listBooking) {
            listHomestays.add(daoHomestay.getHomestay(o.getHomeStayId()));
        }
        return listHomestays;
    }

    public List<Booking> getBookingbyHomeStayID(String homestayId) {
        List<Booking> list = new ArrayList<>();
        String sql = "select *from"
                + " booking  "
                + "where HomeStayId="
                + "'" + homestayId + "'"
                + "ORDER BY "
                + "OrderTime DESC";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Booking(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getDouble(10),
                        rs.getInt(11),
                        rs.getString(12)
                ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;

    }
   public int updateBookingStatus(int status, String homeStayID) {
        int n = 0;
        String sql = "Update Booking set "
                + "status = ? "
                + "where homeStayID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, status);
            pre.setString(2, homeStayID);
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }
    public List<Booking> getLastBooking(String homestayId) {
        List<Booking> list = new ArrayList<>();
        String sql = "	SELECT TOP 3 * FROM Booking"
                + " where HomeStayId='" + homestayId + "'"
                + " and status=0 "
                + " ORDER BY "
                + "OrderTime DESC";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Booking(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getDouble(10),
                        rs.getInt(11),
                        rs.getString(12)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;

    }

    public Booking getbyord(int ord){
         String sql = "Select * from Booking where OrderNumber = '" + ord + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Booking(
                         rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getDouble(10),
                        rs.getInt(11),
                        rs.getString(12));
            
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public List<Booking> getBookingWatting(String homestayId) {
        List<Booking> list = new ArrayList<>();
        String sql = "	SELECT TOP 3 * FROM Booking where HomeStayId='" + homestayId + "' and status=0  ORDER BY OrderTime DESC";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Booking(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getDouble(10),
                        rs.getInt(11),
                        rs.getString(12)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;

    }

    public static void main(String[] args) {
        DAOBooking dao = new DAOBooking();
        List<Booking> list = dao.getBookingbyHomeStayID("HS0002");
        for (Booking temp : list) {
            System.out.println(temp);
        }
        int count=dao.updateBookingStatus(2,"");
        System.out.println(count);

        Booking b=dao.getbyord(22);
        System.out.println(b);
//        String s = "11/27/2020 05:35:00";
//        DateFormat frm = new SimpleDateFormat("MM/dd/yy HH:mm:ss");
//        try {
//            Date temp_date = (Date) frm.parse(s);
//            Calendar cal = Calendar.getInstance();
//            cal.setTime(temp_date);
//            int day = cal.get(Calendar.DAY_OF_MONTH);
//            System.out.println(day);
//        } catch (ParseException ex) {
//            Logger.getLogger(DAOBooking.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }
}
