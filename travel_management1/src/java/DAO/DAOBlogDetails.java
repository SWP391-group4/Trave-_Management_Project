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
        String lastId1 = dao.lastblogdetailIḌ().substring(0, 7);
        String s1 = lastId1.substring(0, 5);
        String s2 = lastId1.substring(4);
        int numnews = Integer.parseInt(s2) + 1;
        String n = Integer.toString(numnews);
        String newID = s1.concat(n);
        System.out.println(newID);
    }
}
