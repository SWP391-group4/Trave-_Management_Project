/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Blogs;
import Entity.HomeStays;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author phams
 */
public class DAOBlogs extends connectDB {
    public int addBlogs(Blogs bl) {
        int n = 0;
        String sql = "insert into HomeStays(BlogId,Image,Title) \n"
                + "values ('" + bl.getBlogId() + "','" + bl.getImage() + "','" + bl.getTitle()+ "')";

        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    
}
