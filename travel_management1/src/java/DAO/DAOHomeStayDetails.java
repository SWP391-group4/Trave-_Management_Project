/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.HomeStayDetails;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author phams
 */
public class DAOHomeStayDetails extends connectDB{
      public Vector<HomeStayDetails> viewDetailHomeStays() {
        Vector<HomeStayDetails> vec = new Vector<HomeStayDetails>();
        String sql = "select hd.Homestayid,hd.bedroomqty,hd.bathroomqty,hd.livingroomqty,hd.kitchenqty,hd.bedqty,hd.checkin,hd.checkout,"
                + "hd.price,hd.incurredcost from HomeStayDetails hd  inner join HomeStays h on hd.HomeStayId = h.HomeStayId";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String homeStayID = rs.getString(1);
                int bedroomQty=rs.getInt(2);
                int bathroomQty=rs.getInt(3);
                 int livingroomQty=rs.getInt(4);
                  int kitchenroomQty=rs.getInt(5);
                  int bedQty=rs.getInt(6);
                  String checkin=rs.getString(7);
                  String CheckOut=rs.getString(8);
                  double price=rs.getDouble(9);
                  double incurredCost=rs.getDouble(10);
                  String description=rs.getString(11);
                  String video = rs.getString(12);
                HomeStayDetails obj = new HomeStayDetails(homeStayID, bedroomQty, bathroomQty, livingroomQty, kitchenroomQty, bedQty, checkin, CheckOut, price, incurredCost, description, video);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }
      
    public int addHomeStayDetails(HomeStayDetails hs) {
        int n = 0;
        String sql = "INSERT INTO HomeStayDetails\n" +
"           (HomeStayId\n" +
"           ,BedRoomQty\n" +
"           ,BathRoomQty\n" +
"           ,LivingRoomQty\n" +
"           ,KitchenQty\n" +
"           ,BedQty\n" +
"           ,CheckIn\n" +
"           ,CheckOut\n" +
"           ,Price\n" +
"           ,IncurredCost\n" +
"           ,Description\n" +
"           ,Video) \n"
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
    
    public static void main(String[] args) {
        DAOHomeStayDetails dao = new DAOHomeStayDetails();
        HomeStayDetails s = new HomeStayDetails("HS0104", 2, 2, 1, 1, 3, "02:30:00.0000000", "21:00:00.0000000", 2399000.0, 350000.0, "There are many seafoo❤d restaurants near the beach. Our side has a service of renting motorbikes, cars, transporting guests to tourist attractions around with reasonable prices. It is very easy to move from the accommodation. Only 100m to Blue Whale Park. Go to Dragon Bridge 3.5Km. Go to Con Market 4.5Km.", "https://www.youtube.com/watch?v=ub9nfM_X1lE&t=14s");
        int n = dao.addHomeStayDetails(s);
        System.out.println(n);
        System.out.println(s);
    }
}
