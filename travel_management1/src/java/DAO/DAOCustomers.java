/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Customers;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nam
 */
public class DAOCustomers extends connectDB{
    PreparedStatement ps;
    ResultSet rs;
    public Customers getCustomerById(String id) {
        try {
            String sql = "select * from Customers where CustomerId = '"+id+ "'";
            ps = conn.prepareStatement(sql);
//            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Customers customers = new Customers(rs.getString(1), 
                        rs.getString(2),
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5));
                return customers;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public static void main(String[] args) {
        DAOCustomers dao = new DAOCustomers();
        System.out.println(dao.getCustomerById("USER018"));
    }
}

