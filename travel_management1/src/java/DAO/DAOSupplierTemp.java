/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOSupplierTemp extends connectDB{
    public int totalSupplier() {
        String sql = "select count(accounts) from suppliers";
        ResultSet rs = getData(sql);
        try {
            if(rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
