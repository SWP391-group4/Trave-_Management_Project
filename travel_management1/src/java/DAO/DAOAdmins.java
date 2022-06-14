/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Admins;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author phams
 */
public class DAOAdmins extends connectDB{
    // List infomation
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
    public static void main(String[] args) {
        DAOAdmins d=new DAOAdmins();
        System.out.println(d.getAdmin("hamhochoi21"));
    }
}
