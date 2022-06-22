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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOSupplierTemp extends connectDB {

    public int totalSupplier() {
        String sql = "select count(accounts) from suppliers";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<SupplierHomestays> pagging(int index) {
        List<SupplierHomestays> list = new ArrayList<>();
        String sql = "select s.AccountS, s.firstName,s.lastName,s.email,h.homestayName\n"
                + "from Homestays h "
                + "inner join Suppliers s "
                + "on h.AccountS = s.AccountS\n"
                + "order by HomeStayName "
                + "offset ? "
                + "rows fetch "
                + "next 7 rows "
                + "only;";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 10);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new SupplierHomestays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public SupplierHomestays getPreview(String accountS, String homestayId) {

        String sql = "select s.accountS, firstName,lastName, fax, \n"
                + "email, phone, homestayId, homestayName, cateId\n"
                + "from suppliers s, homestays \n"
                + "where "
                + "s.accountS = '"+accountS+"' and HomeStayId = '"+homestayId+"'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new SupplierHomestays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public HomeStayAddressses getHomeStay(String homestayID) {
        String sql = "select * from HomeStayAddressses where homestayID = '" + homestayID + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new HomeStayAddressses(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getEvaluate(String homestayID) {
        String sql = "select avg(star) from reviews where HomeStayId = '"+homestayID+"'";
        
        ResultSet rs = getData(sql);
        try {
            if(rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
