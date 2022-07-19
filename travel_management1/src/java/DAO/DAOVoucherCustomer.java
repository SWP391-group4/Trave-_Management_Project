/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.VoucherCustomer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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

    public int getQuantityVoucherbyAcc(String acc, String id) {
        String sql = "select quantity from VoucherCustomer\n"
                + "where AccountC='" + acc + "' and VoucherId='" + id + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public String lastVoucherCusId() {
        String sql = "select top 1 VoucherId from VoucherCustomer\n"
                + "order by VoucherId desc";
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

    public List<VoucherCustomer> getVoucherbyId(String id) {
        List<VoucherCustomer> list = new ArrayList<VoucherCustomer>();
        String sql = "SELECT title, discount from VoucherCustomer\n"
                + "where AccountC='"+id+"'";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String title = rs.getString(1);
                int discount = rs.getInt(2);
                VoucherCustomer obj = new VoucherCustomer( title, discount);
                list.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        DAOVoucherCustomer dao = new DAOVoucherCustomer();
//        dao.addVoucherCus(new VoucherCustomer("VCM001     ", "1", "10", 1, "caoboimiennui"));
        System.out.println(dao.getQuantityVoucherbyAcc("caoboimiennui", "1"));
//          System.out.println(dao.lastVoucherCusId());
         System.out.println(dao.getVoucherbyId("caoboimiennui"));
    }
}
