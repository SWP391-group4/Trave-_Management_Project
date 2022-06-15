/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.HomeStayDetails;
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
                HomeStayDetails obj = new HomeStayDetails(homeStayID, bedroomQty, bathroomQty, livingroomQty, kitchenroomQty, bedQty, checkin, CheckOut, price, incurredCost);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }
}
