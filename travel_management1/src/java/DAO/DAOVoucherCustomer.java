/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.VoucherCustomer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nam
 */
public class DAOVoucherCustomer extends DBContext.connectDB {

    public int addVoucherCus(VoucherCustomer vc) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[VoucherCustomer]\n"
                + "           ([VoucherId]\n"
                + "           ,[Title]\n"
                + "           ,[Image]\n"
                + "           ,[Discount]\n"
                + "           ,[Quantity]\n"
                + "           ,[AccountC])"
                + "     VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, vc.getVoucherId());
            pre.setString(2, vc.getTitle());
            pre.setString(3, vc.getImage());
            pre.setInt(4, vc.getDiscount());
            pre.setInt(5, 1);
            pre.setString(6, vc.getAccountC());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public String getQuantityVoucherbyAcc(String acc, String id) {
        String sql = "select quantity from VoucherCustomer\n"
                + "where AccountC='" + acc + "' and VoucherId='" + id + "'";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        DAOVoucherCustomer dao = new DAOVoucherCustomer();
        //dao.addVoucherCus(new VoucherCustomer("1", "1", "1", 1, "caoboimiennui"));
        System.out.println(dao.getQuantityVoucherbyAcc("caoboimientay", "1"));
    }
}