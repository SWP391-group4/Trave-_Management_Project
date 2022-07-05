/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.SupplierImage;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author phams
 */
public class DAOSupplierImages extends connectDB{
    public int addSupplierImage(SupplierImage sup) {
        int n = 0;
        String sql = "insert into SupplierImage(accountS,img_ID_front,img_ID_back,img_Avatar) \n"
                + "values (?,?,?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, sup.getAccountS());
            pre.setString(2, sup.getImg_ID_front());
            pre.setString(3, sup.getImg_ID_back());
            pre.setString(4, sup.getImg_Avatar());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public static void main(String[] args) {
        DAOSupplierImages dao = new DAOSupplierImages();
        
        
        int n = dao.addSupplierImage(new SupplierImage("haianh123", "destination-2-1.jpg","destination-2-1.jpg", "AvatarDefault.jpg"));
        System.out.println(n);
    }
}
