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
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOBooking.class.getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }

    public List<HomeStays> getHomestay(List<Booking> listBooking) {
        DAOHomeStays daoHomestay = new DAOHomeStays();
        List<HomeStays> listHomestays =  new ArrayList<>();
        for (Booking o : listBooking) {
            listHomestays.add(daoHomestay.getHomestay(o.getHomeStayId()));
        }
        return listHomestays;
    }

    public static void main(String[] args) {
        DAOBooking dao = new DAOBooking();
        List<Booking> l = dao.getBooking("benbohanhphuc");
         List<HomeStays> listHomestays = dao.getHomestay(l);
         for (HomeStays listHomestay : listHomestays) {
             System.out.println(listHomestay);
        }

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
