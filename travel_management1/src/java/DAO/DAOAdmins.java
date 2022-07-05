/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.AdminImage;
import Entity.Admins;
import Entity.MessageAdmin;
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
public class DAOAdmins extends connectDB {

    public Admins getAdmin(String accountA) {
        String sql = "Select * from Admins where AccountA = '" + accountA + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Admins(
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

    public AdminImage getAdminImage(String accountA) {
        String sql = "Select * from AdminImage where AccountA = '" + accountA + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new AdminImage(
                        rs.getString(1),
                        rs.getString(2)
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public List<MessageAdmin> ListMessage() {
        List<MessageAdmin> l = new ArrayList<>();
        String sql = "select * from messengerCA where messRole = 1";
        ResultSet rs = getData(sql);
        try {
            while(rs.next()) {
                l.add(new MessageAdmin(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getInt(4), 
                        rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAdmins.class.getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }
    public static void main(String[] args) {
        DAOAdmins d = new DAOAdmins();
        Admins a = d.getAdmin("khongkk");
        System.out.println(a);
    }
}
