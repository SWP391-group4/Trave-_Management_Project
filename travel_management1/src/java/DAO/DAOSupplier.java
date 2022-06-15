/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.SupplierAddresses;
import Entity.Suppliers;
import java.sql.ResultSet;
import java.sql.SQLException;

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
        String sql = "Select * from customerAddresses where accountC = '" + accountS + "'";
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
     public static void main(String[] args) {
         DAOSupplier d=new DAOSupplier();
        System.out.println(d.getSuppiler("nguyenphuong"));
    }
}
