/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Blogs;
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
public class DAOBlogs extends connectDB {

    public int addBlogs(Blogs bl) {
        int n = 0;
        String sql = "insert into Blogs(BlogId,Image,Title) \n"
                + "values ('" + bl.getBlogId() + "','" + bl.getImage() + "','" + bl.getTitle() + "')";

        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int updateBlogs(Blogs bl) {
        int n = 0;

        String sql = "UPDATE [dbo].[Blogs]"
                + "   SET \n"
                + "      [BlogId] = ?"
                + "      ,[Image] = ?"
                + " WHERE [Title] = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, bl.getBlogId());
            pre.setString(2, bl.getImage());
            pre.setString(3, bl.getTitle());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int removeBlogs(String id) {
        int n = 0;
        String sql = "DELETE FROM [dbo].[Blogs]"
                + "      WHERE BlogId='" + id + "'";
        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public List<Blogs> viewtop3Blogses() {
        List<Blogs> list = new ArrayList<Blogs>();
        String sql = "select  top 3 * from blogs\n"
                + "order by BlogId DESC  ";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String blogId = rs.getString(1);
                String image = rs.getString(2);
                String title = rs.getString(3);
                String accountM = rs.getString(4);
                Blogs obj = new Blogs(blogId, image, title, accountM);
                list.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        DAOBlogs dao = new DAOBlogs();
        List<Blogs> list = dao.viewtop3Blogses();
        for (Blogs o : list) {
            System.out.println(o);
        }
    }
}
