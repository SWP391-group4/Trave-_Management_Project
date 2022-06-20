/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.HomeStayAddressses;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author phams
 */
public class DAOHomeStayAddresses extends connectDB{
    
    public List<HomeStayAddressses> HomeStayAddress() {
        List<HomeStayAddressses> vec = new ArrayList<HomeStayAddressses>();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[HomeStayAddressses]";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String homeStayID = rs.getString(1);
                String city = rs.getString(2);
                String district = rs.getString(3);
                    String Specific = rs.getString(4);
                   String  ward = rs.getString(5);
                HomeStayAddressses obj = new HomeStayAddressses(homeStayID, city, district, Specific, ward);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }
    public static void main(String[] args) {
        DAOHomeStayAddresses dao = new DAOHomeStayAddresses();
       List<HomeStayAddressses> list = dao.HomeStayAddress();
        for(HomeStayAddressses temp : list ){
            System.out.println(temp);
        }
    }
}
