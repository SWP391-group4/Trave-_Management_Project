/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Marketing;
import Entity.MarketingImage;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nam
 */
public class DAOMarketing extends connectDB {

    public Marketing getMarketing(String accountM) {
        String sql = "Select * from Marketing where AccountM = '" + accountM + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Marketing(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public MarketingImage getMarketingImage(String accountM) {
        String sql = "Select * from MarketingImage where AccountM = '" + accountM + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new MarketingImage(
                        rs.getString(1),
                        rs.getString(2)
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public int updateMarketingImage(MarketingImage mar) {
        int n = 0;
        String sql = "UPDATE [MarketingImage]\n"
                + "   SET Img_Avatar = ?"
                + " WHERE AccountM = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(2, mar.getAccountM());
            pre.setString(1, mar.getImg_Avatar());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int updateMarketing(Marketing mar) {
        int n = 0;
        String sql = "UPDATE [Marketing]\n"
                + "   SET FirstName = ?, LastName =?, Age = ?, Email = ?, Phone = ?"
                + " WHERE AccountM = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(6, mar.getAccountM());
            pre.setString(1, mar.getFirstName());
            pre.setString(2, mar.getLastName());
            pre.setInt(3, mar.getAge());
            pre.setString(4, mar.getEmail());
            pre.setString(5, mar.getPhone());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public static void main(String[] args) {
        DAOMarketing dao = new DAOMarketing();
        int n= dao.updateMarketing(new Marketing("bautroikhongem", "Thanh Nam", "Nguyen", 25, "namthanh@gmail.com", "8434784791"));
        if (n > 0) {
            System.out.println("updated");
       
    }
}
}

