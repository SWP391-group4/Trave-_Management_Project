/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Vouchers;
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
                Vouchers obj = new Vouchers(voucherId, title, description,image,discount,quantity,accountM);
                list.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
    public static void main(String[] args) {
        DAOVouchers dao=new DAOVouchers();
        List<Vouchers> list=dao.viewtop3Vouchers();
        for (Vouchers o: list) {
            System.out.println(o);
        }
    }
}
