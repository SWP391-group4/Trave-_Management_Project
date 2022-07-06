/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Slider;
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
     public static void main(String[] args) {
         DAOSlider dao = new DAOSlider();
        List<Slider> list = dao.viewSlider();
        for (Slider o : list) {
            System.out.println(o);
        }
    }
}
