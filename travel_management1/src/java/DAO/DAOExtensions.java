/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Extensions;
import Entity.HomeStays;
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
    public static void main(String[] args) {
        DAOExtensions dao = new DAOExtensions();
        Extensions e = dao.getExtensions("HS0001");
        System.out.println(e);

    }
    
}
