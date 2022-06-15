/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;

import Entity.HomeStays;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOHomeStays extends connectDB{
    public HomeStays search(String homeStayID) {
        String sql = "select * from accounts where "
                + "homeStayID = '"+homeStayID+"'";
        ResultSet rs = getData(sql);
        try {
            if(rs.next()) {
                
              return new HomeStays(
                      rs.getString(1), 
                      rs.getString(2),
                      rs.getString(3));   
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }
    
    public int addHomeStays(HomeStays hs) {
        int n = 0;
        String sql = "insert into HomeStays(HomeStayId,HomeStayName,CateId) \n"
                + "values ('" + hs.getHomeStayID()+ "','" + hs.getHomeStayname()+ "','" + hs.getCateID()+"')";

        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public int updateHomeStays(HomeStays hs) {
        int n = 0;
        
        String sql = "UPDATE [dbo].[HomeStays]"
                + "   SET \n"
                + "      [HomeStayName] = ?"
                + "      ,[CateId] = ?"
                + " WHERE [HomeStayId] = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, hs.getHomeStayname());
            pre.setString(2, hs.getCateID());
            pre.setString(3, hs.getHomeStayID());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public int removeHomeStays(String id) {
        int n = 0;
        String sql = "DELETE FROM [dbo].[HomeStays]"
                + "      WHERE HomeStayId='" + id + "'";
        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public List<HomeStays> viewallHomeStays() {
        List<HomeStays> vec = new ArrayList<HomeStays>();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[HomeStays]";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String homeStayID = rs.getString(1);
                String homeStayname = rs.getString(2);
                String cateID = rs.getString(3);
                HomeStays obj = new HomeStays(homeStayID, homeStayname, cateID);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }
    public List<HomeStays> viewallHomeStayByAddress(){
          List<HomeStays> vec = new ArrayList<HomeStays>();
          String sql="select h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,ha.specific,ha.ward from HomeStays h inner join HomeStayAddressses ha on\n" +
"h.HomeStayid=ha.HomeStayid";
            try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String homeStayID = rs.getString(1);
                String homeStayname = rs.getString(2);
                String cateID = rs.getString(3);
                String city = rs.getString(4);
                String district = rs.getString(5);
                String specific = rs.getString(6);
                String ward = rs.getString(7);
                HomeStays obj = new HomeStays(homeStayID, homeStayname, cateID, city, district, specific, ward);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
              return vec;
    }
}
