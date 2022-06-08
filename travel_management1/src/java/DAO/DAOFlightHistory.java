/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.FlightHistory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nam
 */
public class DAOFlightHistory extends connectDB{
    PreparedStatement ps;
    ResultSet rs;
    public List<FlightHistory> getAllFLHistoryByCusId(String id) {
        List<FlightHistory> list = new ArrayList<>();
        try {
            String sql = "select TicketId, CustomerId, FlightOrderNumber, (FirstName +' '+LastName) as FullName, Phone, Price, Feedback,Star\n" +
"from FlightHistory where CustomerId = '"+id+"'";
            ps = conn.prepareStatement(sql);
//            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                 FlightHistory flHis = new FlightHistory(rs.getString(1),
                         rs.getString(2),
                         rs.getInt(3), 
                         rs.getString(4),
                         null, 
                         rs.getString(5), 
                         rs.getDouble(6), 
                         rs.getString(7),
                         rs.getInt(8));
                 list.add(flHis);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
     
    public static void main(String[] args) {
        DAOFlightHistory dao = new DAOFlightHistory();
        System.out.println(dao.getAllFLHistoryByCusId("USER018"));
    }
}
