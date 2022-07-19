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
import java.time.LocalDate;
import java.time.Year;
import java.time.ZoneId;
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
        String sql = "select *from  booking  where HomeStayId='"+homestayId+"'\n" +
"                ORDER BY \n" +
"                OrderTime DESC";

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
 
 public String pricePerMonth(int month,String homeStayID) {
        String sql = "select totalPrice from  (select MONTH(OrderTime) as SalesMonth,\n" +
" SUM(price) as totalPrice\n" +
" from booking where HomeStayId=?\n" +
" GROUP BY MONTH(OrderTime)) as t where t.SalesMonth =?";
        try {
                   PreparedStatement pre = conn.prepareStatement(sql);
                   pre.setString(1, homeStayID);
            pre.setInt(2, month);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                String totalPrice = rs.getString("totalPrice");
                return totalPrice;
            }
            pre.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }
  public String aVGbyYear(String year,String homeStayID) {
        String sql = "select (totalPrice) from  (select Year(OrderTime) as SalesYear,\n" +
" avg(price) as totalPrice\n" +
" from booking where HomeStayId=?\n" +
"GROUP BY YEAR(OrderTime)) as t where t.SalesYear=?";
        try {
                   PreparedStatement pre = conn.prepareStatement(sql);
                   pre.setString(1, homeStayID);
            pre.setString(2, year);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                String totalPrice = rs.getString("totalPrice");
                return totalPrice;
            }
            pre.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }
 
  public String numberOfBookingbyMonth(int month,String homeStayID) {
        String sql = "select totalPrice from  (select MONTH(OrderTime) as SalesMonth,\n" +
" COUNT(price) as totalPrice\n" +
" from booking where HomeStayId=?\n" +
" GROUP BY MONTH(OrderTime)) as t where t.SalesMonth =?";
        try {
                   PreparedStatement pre = conn.prepareStatement(sql);
                   pre.setString(1, homeStayID);
            pre.setInt(2, month);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                String totalPrice = rs.getString("totalPrice");
                return totalPrice;
            }
            pre.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }
    public List<Booking> getBookingbyHomeStayIDandORDER(String homestayId,int OrderNumber) {
        List<Booking> list = new ArrayList<>();
        String sql = "select *from  booking  where HomeStayId='"+homestayId+"' and OrderNumber='"+OrderNumber+"'  \n" +
"                ORDER BY \n" +
"                OrderTime DESC";

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
     public int getMonth() {
        Date date = new Date();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        int month = localDate.getMonthValue();
        return month;
    }
     public Booking getHomeStay(String homeStayID){
               String sql = "select * from booking where HomeStayId='"+homeStayID+"'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Booking( rs.getString(1),
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
            Logger.getLogger(DAOBlogs.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
     }

    public static void main(String[] args) {
        DAOBooking dao = new DAOBooking();
//        List<Booking> list = dao.getBookingbyHomeStayIDandORDER("HS0002",13);
//        for (Booking temp : list) {
//            System.out.println(temp);
//        }
//        int count=dao.updateBookingStatus(2,"");
//        System.out.println(count);
       Date date = Calendar.getInstance().getTime();  
                DateFormat dateFormat = new SimpleDateFormat("yyyy");  
                String strDate = dateFormat.format(date);  
                System.out.println("Converted String: " + strDate);  
  String nd=dao.aVGbyYear(strDate, "HS0002");
        System.out.println(nd);
//        Booking b=dao.getbyord(22);
//        System.out.println(b);
//        Booking ia=dao.getHomeStay("HS0002");
//        System.out.println(ia);
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
