/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Images;
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
public class DAOImages extends connectDB {

    public int addHomeStayImage(Images img) {
        int n = 0;
        String sql = "insert into Images(imageId, ImageUrl,HomeStayId) \n"
                + "values (?,?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, getIdAuto());
            pre.setString(2, img.getImageUrl());
            pre.setString(3, img.getHomeStayId());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public Images getLastImage() {
        String sql = "select top 1 * from images order by imageId desc";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Images(rs.getString(1), rs.getString(2), rs.getString(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public String getIdAuto() {
        String id = getLastImage().getImageId();
        String[] idComponent = id.trim().split("IM");
        try {
            int code = Integer.parseInt(idComponent[1]) + 1;
            return "IM00" + code;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Images> getIMG(String homestayID) {
        List<Images> list = new ArrayList<>();

        String sql = "select * from Images where HomeStayId='" + homestayID + "'";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Images(
                        rs.getString(1),
                        rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public Images getIMGtop1(String homestayID) {

        String sql = "select  top 1* from Images where homestayID='" + homestayID + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Images(rs.getString(1), rs.getString(2), rs.getString(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        DAOImages dao = new DAOImages();
        //        List<Images> list = dao.getIMG("HS0001");
        //        for (Images temp : list) {
        //            System.out.println(temp);
        //        }
        //        Images img=dao.getIMGtop1("HS0001");
        //        System.out.println(img);
        String auto = dao.getIdAuto();
        System.out.println(auto);
    }
}
