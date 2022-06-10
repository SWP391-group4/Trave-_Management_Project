/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Planes;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nam
 */
public class DAOPlanes extends connectDB {

    // list all
    public void ListAll() {
        String sql = "select p.PlaneName,p.PlaneCate,t.SeatClass,pb.PlaneBrandName,t.SeatNumber,t.Price,f.StartTimeA,f.[From],f.[To],t.FlightId from planes p\n"
                + "inner join FlightDetails f on p.PlaneId=f.PlaneId\n"
                + "inner join Airports a on a.AirportId=p.AirportId\n"
                + "inner join Tickets t on t.FlightId=f.FlightId\n"
                + "inner join PlaneBrands pb on pb.PlaneBrandId=p.PlaneBrandId";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                String planeName = rs.getString(1);//rs.getString(1);
                String planeCate = rs.getString(2);
                String seatClass = rs.getString(3);
                String planeBrandName = rs.getString(4);
                int seatNumber = rs.getInt(5);
                double price = rs.getDouble(6);
                String startTimeA = rs.getString(7);
                String from = rs.getString(8);
                String to = rs.getString(9);
                String flightId = rs.getString(10); 
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOPlanes.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    // test
    public static void main(String[] args) {
        DAOPlanes p=new DAOPlanes();
        p.ListAll();
        
    }
}
