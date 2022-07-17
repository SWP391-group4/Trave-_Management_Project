/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Images;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author phams
 */
public class DAOImages extends connectDB{
    public int addHomeStayImage(Images img) {
        int n = 0;
        String sql = "insert into Images(ImageUrl,HomeStayId) \n"
                + "values (?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, img.getImageUrl());
            pre.setString(2, img.getHomeStayId());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public static void main(String[] args) {
        DAOImages dao = new DAOImages();
        Images s = new Images("HIMG0104", "destination-2-1.jpg","HS0104");
        int n = dao.addHomeStayImage(s);
        System.out.println(n);
        System.out.println(s);
    }
}
