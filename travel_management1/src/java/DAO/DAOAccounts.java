/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Accounts;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOAccounts extends connectDB {

    public Accounts search(String account, String password) {
        String sql = "select * from accounts where "
                + "account = '" + account + "'and "
                + "password =+ '" + password + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {

                return new Accounts(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public Accounts checkAccount(String account) {
        String sql = "select * from Accounts where Account=?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, account);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {

                return new Accounts(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public int totalAccount() {
        String sql = "select count(account) from accounts";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public void signUp(String account, String pass) {
        String sql = "insert into Accounts\n"
                + "values(?,?,3)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, account);
            pre.setString(2, pass);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getPassword(String account) {
        String sql = "select password from accounts where account = '" + account + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int updatePassword(String account, String password) {
        int n = 0;
        String sql = "Update Accounts set "
                + "password = ? "
                + "where account = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, password);
            pre.setString(2, account);
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int insertAccount(Accounts acc) {
        int n = 0;
        String sql = "insert into Accounts(account,password,TypeId) \n"
                + "values (?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, acc.getAccount());
            pre.setString(2, acc.getPassword());
            pre.setInt(3, acc.getType());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    public static void main(String[] args) {
        DAOAccounts dao = new DAOAccounts();
        
        
        int n = dao.insertAccount(new Accounts("haianh123", "123456", 3));
        System.out.println(n);
    }
}
