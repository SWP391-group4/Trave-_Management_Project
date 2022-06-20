/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.SupplierAddresses;
import Entity.Suppliers;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOSupplier extends connectDB{
     public Suppliers getSuppiler(String accountS) {
        String sql = "Select * from Suppliers where accountS = '" + accountS + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Suppliers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                         rs.getString(6)
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    public SupplierAddresses getSupplierAddresses(String accountS) {
        String sql = "Select * from SupplierAddresses where accountC = '" + accountS + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new SupplierAddresses(
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
    public int updateSuppiler(Suppliers cus) {
        int n = 0;
        String sql = "Update Suppliers set "
                + "firstname =?,"
                + "lastname = ? "
                + "where accountC = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cus.getFirstName());
            pre.setString(2, cus.getLastName());
            pre.setString(3, cus.getAccountS());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplier.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }
    public int updateSupAddress(SupplierAddresses cusAdd) {
        int n = 0;
        String sql = "Update SupplierAddresses set "
                + "city =?,"
                + "district =?,"
                + "specific =?,"
                + "ward = ? "
                + "where accountS = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cusAdd.getCity());
            pre.setString(2, cusAdd.getDistrict());
            pre.setString(3, cusAdd.getSpecific());
            pre.setString(4, cusAdd.getWard());
            pre.setString(5, cusAdd.getAccountS());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplier.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }
     public static void main(String[] args) {
         DAOSupplier d=new DAOSupplier();
        System.out.println(d.getSuppiler("nguyenphuong"));
    }
}
