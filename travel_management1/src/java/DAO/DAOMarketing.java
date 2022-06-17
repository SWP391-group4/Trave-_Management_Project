/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.MarketingImage;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nam yeu tung and sang
 * non tay thinh
 */
public class DAOMarketing extends connectDB{
    public MarketingImage getMarketingImage(String accountM) {
        String sql = "Select * from AdminImage where AccountM = '" + accountM + "'";
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
        System.out.println(dao.getMarketingImage("new"));
    }
}
