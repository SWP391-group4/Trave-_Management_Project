/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.RestaurantHistory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nam
 */
public class DAORestaurantHistory extends connectDB{
    PreparedStatement ps;
    ResultSet rs;
    public List<RestaurantHistory> getAllRSHistoryByCusId(String id) {
        List<RestaurantHistory> list = new ArrayList<>();
        try {
            String sql = "select (LastName +' '+ FirstName) as FullName, Phone, OrderTime, Feedback, Star from RestaurantHistory \n" +
"where CustomerId = '"+id+" '";
            ps = conn.prepareStatement(sql);
//            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                 RestaurantHistory restauranthistory = new RestaurantHistory(null, 0, rs.getString(1), null, rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getInt(5));
                list.add(restauranthistory);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
     
    public static void main(String[] args) {
        DAORestaurantHistory dao = new DAORestaurantHistory();
        System.out.println(dao.getAllRSHistoryByCusId("USER018"));
    }
}

