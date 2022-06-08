/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.HotelHistory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nam
 */
public class DAOHotelHistory extends connectDB{
      PreparedStatement ps;
    ResultSet rs;
    public List<HotelHistory> getAllHTHistoryByCusId(String id) {
        List<HotelHistory> list = new ArrayList<>();
        try {
            String sql = "select (FirstName +' '+ LastName)as FullName, Phone,OrderTime, UsedTime, Feedback, Star from HotelHistory\n" +
"where CustomerId = '"+id+"'";
            ps = conn.prepareStatement(sql);
//            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                HotelHistory hotelHistory = new HotelHistory(null,
                        null, 
                        0, 
                        rs.getString(1), 
                        null, 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getInt(6));
                        list.add(hotelHistory);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
     
    public static void main(String[] args) {
        DAOHotelHistory dao = new DAOHotelHistory();
        System.out.println(dao.getAllHTHistoryByCusId("USER018"));
    }
}


