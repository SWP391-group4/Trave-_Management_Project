/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Slider;
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
public class DAOSlider extends DBContext.connectDB {

    public List<Slider> viewSlider() {
        List<Slider> list = new ArrayList<Slider>();
        String sql = "select * from Slider\n ";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String sliderID = rs.getString(1);
                String sliderName = rs.getString(2);
                String sliderImage = rs.getString(3);
                String accountM = rs.getString(4);
                Slider obj = new Slider(sliderID, sliderName, sliderImage, accountM);
                list.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<Slider> viewSliderbyId(String id) {
        List<Slider> list = new ArrayList<Slider>();
        String sql = "select * from Slider\n "
                + "where sliderId='" + id + "'";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String sliderID = rs.getString(1);
                String sliderName = rs.getString(2);
                String sliderImage = rs.getString(3);
                String accountM = rs.getString(4);
                Slider obj = new Slider(sliderID, sliderName, sliderImage, accountM);
                list.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public String getSliderName(String id) {
        String n = null;

        String sql = "select slidername from slider\n"
                + "where sliderId='" + id + "'";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            if (rs.next()) {
                n = rs.getString(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public String getSliderImage(String id) {
        String n = null;

        String sql = "select sliderimage from slider\n"
                + "where sliderId='" + id + "'";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            if (rs.next()) {
                n = rs.getString(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int updateSlider(Slider s) {
        int n = 0;

        String sql = "UPDATE [dbo].[Slider]\n"
                + "   SET \n"
                + "      [SliderName] = ?\n"
                + "      ,[SliderImage] = ?\n"
                + "      ,[AccountM] = ?\n"
                + " WHERE [SliderID] = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, s.getSliderName());
            pre.setString(2, s.getSliderImage());
            pre.setString(3, s.getAccountS());
            pre.setString(4, s.getSliderID());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public static void main(String[] args) {
        DAOSlider dao = new DAOSlider();
        List<Slider> list = dao.viewSliderbyId("s03");
        for (Slider o : list) {
            System.out.println(o);
        }
//        int n = dao.updateSlider(new Slider("S01", "Ha Noi", "HN.png", "bautroikhongem"));
//        System.out.println(n);
//        System.out.println(dao.getSliderImage("s01"));
    }
}
