/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Accounts;
import Entity.Categories;
import Entity.HomeStays;
import java.sql.PreparedStatement;
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
                Categories obj = new Categories(cateId, cateName);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }
    
    public int addCategories(Categories cate) {
        int n = 0;
        String sql = "insert into Categories(cateId,cateName) \n"
                + "values (?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cate.getCateId());
            pre.setString(2, cate.getCateName());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    

    public static void main(String[] args) {
         DAOCategories dao = new DAOCategories();
          List<Categories> list = dao.ListCate();
           for (Categories o : list) {
            System.out.println(o);
        }
           
        int n = dao.addCategories(new Categories("CATID005", "Biet Thu Trong Rung"));
        System.out.println(n);
    }
}
