/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.HomeStayDetails;
import Entity.HomeStays;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOHomeStayDetails extends connectDB {

    public Vector<HomeStayDetails> viewDetailHomeStays() {
        Vector<HomeStayDetails> vec = new Vector<HomeStayDetails>();
        String sql = "select hd.Homestayid,hd.bedroomqty,hd.bathroomqty,hd.livingroomqty,hd.kitchenqty,hd.bedqty,hd.checkin,hd.checkout,"
                + "hd.price,hd.incurredcost from HomeStayDetails hd  inner join HomeStays h on hd.HomeStayId = h.HomeStayId";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String homeStayID = rs.getString(1);
                int bedroomQty = rs.getInt(2);
                int bathroomQty = rs.getInt(3);
                int livingroomQty = rs.getInt(4);
                int kitchenroomQty = rs.getInt(5);
                int bedQty = rs.getInt(6);
                String checkin = rs.getString(7);
                String CheckOut = rs.getString(8);
                double price = rs.getDouble(9);
                double incurredCost = rs.getDouble(10);
                String description = rs.getString(11);
                String video = rs.getString(12);
                HomeStayDetails obj = new HomeStayDetails(homeStayID, bedroomQty, bathroomQty, livingroomQty, kitchenroomQty, bedQty, checkin, CheckOut, price,  description,incurredCost, video);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public int addHomeStayDetails(HomeStayDetails hs) {
        int n = 0;
        String sql = "INSERT INTO HomeStayDetails\n"
                + "           (HomeStayId\n"
                + "           ,BedRoomQty\n"
                + "           ,BathRoomQty\n"
                + "           ,LivingRoomQty\n"
                + "           ,KitchenQty\n"
                + "           ,BedQty\n"
                + "           ,CheckIn\n"
                + "           ,CheckOut\n"
                + "           ,Price\n"
                + "           ,IncurredCost\n"
                + "           ,Description\n"
                + "           ,Video) \n"
                + "values (?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, hs.getHomestayid());
            pre.setInt(2, hs.getBedRoomQty());
            pre.setInt(3, hs.getBathRoomQty());
            pre.setInt(4, hs.getLivingRoomQty());
            pre.setInt(5, hs.getKitchenQty());
            pre.setInt(6, hs.getBedQty());
            pre.setString(7, hs.getCheckIn());
            pre.setString(8, hs.getCheckOut());
            pre.setDouble(9, hs.getPrice());
            pre.setDouble(10, hs.getIncurredCost());
            pre.setString(11, hs.getDescription());
            pre.setString(12, hs.getVideo());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public HomeStayDetails getCheckInOut(String homestayID) {
        String sql = "select homestayid,bedRoomQty,bathRoomQty,livingRoomQty,kitchenQty,"
                + "bedQty,checkIn,checkOut,price,description,incurredCost,video from HomeStayDetails where HomeStayId='" + homestayID + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {

                return new HomeStayDetails(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getInt(3),
                         rs.getInt(4),
                         rs.getInt(5),
                         rs.getInt(6),rs.getString(7),rs.getString(8),rs.getDouble(9),rs.getString(10),rs.getDouble(11),rs.getString(12));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public static void main(String[] args) {
        DAOHomeStayDetails dao = new DAOHomeStayDetails();
        HomeStayDetails s =dao.getCheckInOut("HS0001");
        System.out.println(s);
    
    }
}
