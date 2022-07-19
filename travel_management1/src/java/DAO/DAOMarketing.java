/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Categories;
import Entity.Marketing;
import Entity.MarketingImage;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

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

    public List<Marketing> ListMKT() {
        List<Marketing> vec = new ArrayList<Marketing>();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Marketing]";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String AccountM = rs.getString(1);
                String FirstName = rs.getString(2);
                String LastName = rs.getString(3);
                int Age = rs.getInt(3);
                String Email = rs.getString(3);
                String Phone = rs.getString(3);
                Marketing obj = new Marketing(AccountM, FirstName, LastName, Age, Email, Phone);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public List<Marketing> getAuthorMarketings(String id) {
        List<Marketing> vec = new ArrayList<Marketing>();
        String sql = "select m.LastName,m.FirstName from blogs b\n"
                + "inner join Marketing m on b.AccountM=m.AccountM\n"
                + "where b.BlogId like '"+id+"'";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String AccountM = null;
                String FirstName = rs.getString(1);
                String LastName = rs.getString(2);
                int Age = 0;
                String Email = null;
                String Phone = null;
                Marketing obj = new Marketing(AccountM, FirstName, LastName, Age, Email, Phone);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public static void main(String[] args) {
//        DAOMarketing dao = new DAOMarketing();
//                List<Marketing> list = dao.getAuthorMarketings("BL0001    ");
//        for (Marketing o : list) {
//            System.out.println(o);
//        }
        LocalDate date_day = java.time.LocalDate.now();
            LocalTime date_time = java.time.LocalTime.now();
            String date = date_day+" "+date_time;
            System.out.println(date);
    }
}
