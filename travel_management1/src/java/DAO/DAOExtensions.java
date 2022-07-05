/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Extensions;
import Entity.HomeStayAddressses;
import Entity.HomeStays;
import Entity.Rules;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOExtensions extends connectDB{
    public Extensions getExtensions(String homestayId) {
        String sql = "select HomeStayId, ListExtensions from Extensions  where homestayID= '" + homestayId + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Extensions(
                        rs.getString(1),
                        rs.getString(2)
                        );
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public int addExtensions(Extensions hs) {
        int n = 0;
        String sql = "insert into Extensions(HomeStayId,ListExtensions) \n"
                + "values (?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, hs.getHomeStayId());
            pre.setString(2, hs.getListExtentions());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public static void main(String[] args) {
        DAOExtensions dao = new DAOExtensions();
//        Extensions e = dao.getExtensions("HS0001");
//        System.out.println(e);
        Extensions s = new Extensions("HS0104", "All basic Extension, Reception 24/24, View of the forest, Fishing");
        int n = dao.addExtensions(s);
        System.out.println(n);
        System.out.println(s);

    }
    
}
