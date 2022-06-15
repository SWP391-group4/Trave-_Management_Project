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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nam
 */
public class DAOCustomers extends connectDB{

    public Customers getCustomer(String accountC) {
        String sql = "Select * from customers where accountc = '" + accountC + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Customers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        0
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public CustomerAddresses getCustomerAddresses(String accountC) {
        String sql = "Select * from customerAddresses where accountC = '" + accountC + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new CustomerAddresses(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public int updateCustomer(Customers cus) {
        int n = 0;
        String sql = "update Customers set "
                + "firstName = ?,"
                + "lastname = ? "
                + "where accountC = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cus.getFirstName());
            pre.setString(2, cus.getLastName());
            pre.setString(3, cus.getAccountC());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomers.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }
    
    
    public static void main(String[] args) {
        DAOCustomers dao = new DAOCustomers();
        Customers cus = dao.getCustomer("motnguoithu3");
        cus.setFirstName("Trang");
        cus.setLastName("Tran");
        int n = dao.updateCustomer(cus);
        Customers cus1 = dao.getCustomer("motnguoithu3");
        CustomerAddresses c = dao.getCustomerAddresses("motnguoithu3");
        System.out.println(cus);
        System.out.println(c);
        System.out.println(n);
        System.out.println(cus1);
    }
}
