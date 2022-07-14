/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.BlogDetails;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author phams
 */
public class DAOBlogDetails extends DBContext.connectDB {

    public int addBlogDetails(BlogDetails b1) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[BlogDetails]\n"
                + "           ([BlogDetailId]\n"
                + "           ,[Image]\n"
                + "           ,[News]\n"
                + "           ,[BlogId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, b1.getBlogDetailId());
            pre.setString(2, b1.getImage());
            pre.setString(3, b1.getNews());
            pre.setString(4, b1.getBlogId());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int updateBlogDetails(BlogDetails b) {
        int n = 0;

        String sql = "UPDATE [dbo].[BlogDetails]\n"
                + "   SET \n"
                + "      [Image] = ?"
                + "      ,[News] = ?"
                + " WHERE [BlogId] = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, b.getImage());
            pre.setString(2, b.getNews());
            pre.setString(3, b.getBlogId());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int removeBlogDetails(String id) {
        int n = 0;
        String sql = "DELETE FROM [dbo].[BlogDetails]"
                + "      WHERE BlogId='" + id + "'";
        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public String lastblogdetailIḌ() {
        String sql = "select top 1 BlogDetailId from [BlogDetails]\n"
                + "order by BlogDetailId desc";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        DAOBlogDetails dao = new DAOBlogDetails();
//        int n=dao.addBlogDetails(new BlogDetails("2", "1", "1", "BL0001    "));
//        System.out.println(n);
        String lastId1d1 = dao.lastblogdetailIḌ().substring(0, 7);
        String s1d1 = lastId1d1.substring(0, 6);
        String s2d1 = lastId1d1.substring(6);
        int numnewsd1 = Integer.parseInt(s2d1) + 2;
        String nd1 = Integer.toString(numnewsd1);
        String newIDd1 = s1d1.concat(nd1);
        System.out.println(newIDd1);
    }
}
