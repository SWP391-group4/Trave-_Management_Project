/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Vouchers;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author Nam
 */
public class DAOVouchers extends DBContext.connectDB {

    public List<Vouchers> viewtop3Vouchers() {
        List<Vouchers> list = new ArrayList<Vouchers>();
        String sql = "select  top 3 * from voucher\n"
                + "where Quantity >0\n"
                + "order by VoucherId DESC ";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String voucherId = rs.getString(1);
                String title = rs.getString(2);
                String description = rs.getString(3);
                String image = rs.getString(4);
                int discount = rs.getInt(5);
                int quantity = rs.getInt(6);
                String accountM = rs.getString(7);
                Vouchers obj = new Vouchers(voucherId, title, description, image, discount, quantity, accountM);
                list.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<Vouchers> view5PagingVouchers(int index) {
        List<Vouchers> l = new ArrayList<>();
        String sql = "select * from Voucher\n"
                + "order by VoucherId\n"
                + "offset ? rows\n"
                + "fetch next 5 rows only";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 5);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                l.add(new Vouchers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7)
                ));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public int counttotalV() {
        String sql = "select count(*) from Voucher ";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public String lastVoucherId() {
        String sql = "select top 1 VoucherId from Voucher\n"
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

    public static void main(String[] args) {
        DAOVouchers dao = new DAOVouchers();
        String lastId1 = dao.lastVoucherId().substring(0,6);
        String s1=lastId1.substring(0,3);
        String s2=lastId1.substring(3);
        int numnews=Integer.parseInt(s2)+90;
        String n=Integer.toString(numnews);
        String newID=s1.concat(n);
        System.out.println(newID);
    }
}
