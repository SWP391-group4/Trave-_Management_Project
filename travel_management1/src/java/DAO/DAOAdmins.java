/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.AdminImage;
import Entity.Admins;
import Entity.MessageAdmin;
import Entity.Suppliers;
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
            while (rs.next()) {
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

    public MessageAdmin getMessage(String messengerCAId) {
        String sql = "select * from MessengerCA where messengerCAId = " + messengerCAId;
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new MessageAdmin(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAdmins.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int contactCustomer(MessageAdmin mess) {
        int n = 0;
        String sql = "insert into messengerCA (caption, description, messrole, accountC) "
                + "values(?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, mess.getCaption());
            pre.setString(2, mess.getDescription());
            pre.setInt(3, 0);
            pre.setString(4, mess.getAccountC());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomers.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public List<Suppliers> listPendingSupplier() {
        List<Suppliers> l = new ArrayList<>();
        String sql = "select * from suppliers where status = 1";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                l.add(new Suppliers(
                        rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(5), 
                        rs.getInt(6))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAdmins.class.getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }
    public int totalMessage() {
        String sql = "select count(*) from MessengerCA where messrole = 1";
        ResultSet rs = getData(sql);
        try {
            if(rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAdmins.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public static void main(String[] args) {
        DAOAdmins d = new DAOAdmins();
        Admins a = d.getAdmin("khongkk");
        System.out.println(a);
    }
}
