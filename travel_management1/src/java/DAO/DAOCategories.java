/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Categories;
import Entity.HomeStays;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author phams
 */
public class DAOCategories extends connectDB{
    
    public List<Categories> ListCate() {
        List<Categories> vec = new ArrayList<Categories>();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Categories]";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String cateId = rs.getString(1);
                String cateName = rs.getString(2);
                String accountS = rs.getString(3);
                Categories obj = new Categories(cateId, cateName);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }
    public static void main(String[] args) {
         DAOCategories dao = new DAOCategories();
          List<Categories> list = dao.ListCate();
           for (Categories o : list) {
            System.out.println(o);
        }
    }
}
