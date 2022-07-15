/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.HomeStayAddressses;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author phams
 */
public class DAOHomeStayAddresses extends connectDB {

    public List<HomeStayAddressses> HomeStayAddress() {
        List<HomeStayAddressses> vec = new ArrayList<HomeStayAddressses>();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[HomeStayAddressses]";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String homeStayID = rs.getString(1);
                String city = rs.getString(2);
                String district = rs.getString(3);
                String Specific = rs.getString(4);
                String ward = rs.getString(5);
                HomeStayAddressses obj = new HomeStayAddressses(homeStayID, city, district, Specific, ward);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public List<String> HomeStayAddressCity() {
        List<String> vec = new ArrayList<String>();
        String sql = "select city from HomeStayAddressses\n"
                + "group by city";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String city = rs.getString(1);
                vec.add(city);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public int addHomeStayAddresses(HomeStayAddressses hs) {
        int n = 0;
        String sql = "insert into HomeStayAddressses(HomeStayId,City,District,Specific,Ward) \n"
                + "values (?,?,?,?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, hs.getHomestayid());
            pre.setString(2, hs.getCity());
            pre.setString(3, hs.getDistrict());
            pre.setString(4, hs.getSpecific());
            pre.setString(5, hs.getWard());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public static void main(String[] args) {
        DAOHomeStayAddresses dao = new DAOHomeStayAddresses();
        List<String> list = dao.HomeStayAddressCity();
        for (String temp : list) {
            System.out.println(temp);
        }
        System.out.println(list.size());
//        HomeStayAddressses s = new HomeStayAddressses("HS0104", "Vinh Yen", "Vinh Phuc", "2 Tam Dao", "Thon 1");
//        int n = dao.addHomeStayAddresses(s);
//        System.out.println(n);
//        System.out.println(s);
    }
}
