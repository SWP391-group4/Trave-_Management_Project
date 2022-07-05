/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.SupplierAddresses;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author phams
 */
public class DAOSupplierAddresses extends connectDB{
    public int addSuppliersAddresses(SupplierAddresses sup) {
        int n = 0;
        String sql = "insert into SupplierAddresses(AccountS,city,district,specific,ward) \n"
                + "values (?,?,?,?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, sup.getAccountS());
            pre.setString(2, sup.getCity());
            pre.setString(3, sup.getDistrict());
            pre.setString(4, sup.getSpecific());
            pre.setString(5, sup.getWard());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public static void main(String[] args) {
        DAOSupplierAddresses dao = new DAOSupplierAddresses();
        
        
        int n = dao.addSuppliersAddresses(new SupplierAddresses("haianh123", "Ha Noi","Long BIen", "554/31 Nguyen Van Cu", "Gia Thuy"));
        System.out.println(n);
    }
}
