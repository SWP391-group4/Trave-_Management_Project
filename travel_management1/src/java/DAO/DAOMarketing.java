/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Marketing;
import Entity.MarketingImage;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nam
 */
public class DAOMarketing extends connectDB{
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
    public static void main(String[] args) {
        DAOMarketing dao=new DAOMarketing();
        System.out.println(dao.getMarketing("bautroikhongem"));
        System.out.println(dao.getMarketingImage("bautroikhongem"));
    }
}
