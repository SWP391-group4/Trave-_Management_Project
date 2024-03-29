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
import java.util.logging.Level;
import java.util.logging.Logger;
import static javax.swing.UIManager.getString;

/**
 *
 * @author phams
 */
public class DAOBlogs extends connectDB {

    public int addBlogs(Blogs b) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[Blogs]\n"
                + "           ([BlogId]\n"
                + "           ,[Image]\n"
                + "           ,[Title]\n"
                + "           ,[AccountM])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, b.getBlogId());
            pre.setString(2, b.getImage());
            pre.setString(3, b.getTitle());
            pre.setString(4, b.getAccountM());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int updateBlogs(Blogs b) {
        int n = 0;

        String sql = "UPDATE [dbo].[Blogs]\n"
                + "   SET \n"
                + "      [Image] = ?\n"
                + "      ,[Title] = ?\n"
                + "      ,[AccountM] = ?\n"
                + " WHERE [BlogId] = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(4, b.getBlogId());
            pre.setString(1, b.getImage());
            pre.setString(2, b.getTitle());
            pre.setString(3, b.getAccountM());
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

    public List<Blogs> viewtop3Blogses2(String id) {
        List<Blogs> list = new ArrayList<Blogs>();
        String sql = "select  top 4 * from blogs\n"
                + "where BlogId != '" + id + "' "
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

    public List<Blogs> view5PagingBlogses(int index) {
        List<Blogs> l = new ArrayList<>();
        String sql = "select * from Blogs\n"
                + "order by BlogId\n"
                + "offset ? rows\n"
                + "fetch next 5 rows only";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 5);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                l.add(new Blogs(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                ));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public int counttotalB() {
        String sql = "select count(*) from blogs ";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public int countoDivforSearchName(String txtSearchName) {
        String sql = "select count(*) from blogs where Title like ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, "%" + txtSearchName + "%");
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<Blogs> viewallBlogs() {
        List<Blogs> vec = new ArrayList<Blogs>();
        String sql = "select a.BlogId, a.[Image],a.Title , b.News, a.AccountM\n"
                + "from Blogs a inner join BlogDetails b\n"
                + "on a.BlogId = b.BlogId";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String BlogId = rs.getString(1);
                String Image = rs.getString(2);
                String Title = rs.getString(3);
                String News = rs.getString(4);
                String AccountM = rs.getString(5);
                Blogs obj = new Blogs(BlogId, Image, Title, News, AccountM);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public List<Blogs> viewBlogsHome() {
        List<Blogs> vec = new ArrayList<Blogs>();
        String sql = "select a.BlogId, a.[Image],a.Title , b.News, a.AccountM\n"
                + "from Blogs a inner join BlogDetails b\n"
                + "on a.BlogId = b.BlogId";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String BlogId = rs.getString(1);
                String Image = rs.getString(2);
                String Title = rs.getString(3);
                String News = rs.getString(4);
                String AccountM = rs.getString(5);
                Blogs obj = new Blogs(BlogId, Image, Title, News, AccountM);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public String getTitle(String id) {
        String sql = "select title from blogs\n"
                + "where BlogId='" + id + "'";
        String title = null;
        try {

            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                title = rs.getString(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return title;
    }

    public List<Blogs> BlogsSearch(int index, String title) {
        List<Blogs> vec = new ArrayList<>();
        String sql = "select * from Blogs where "
                + "Title like '%" + title + "%' "
                + "order by BlogId\n"
                + "offset ? rows\n"
                + "fetch next 3 rows only";
//        ResultSet rs = getData(sql);
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 4);
            ResultSet rs = pre.executeQuery();

            while (rs.next()) {
                vec.add(new Blogs(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));

            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOBlogs.class.getName()).log(Level.SEVERE, null, ex);
        }

        return vec;
    }

    public List<Blogs> viewBlogsDetail(String id) {
        List<Blogs> vec = new ArrayList<Blogs>();
        String sql = "select a.BlogId, a.[Image],a.Title,b.[image] , b.News, a.AccountM\n"
                + "from Blogs a inner join BlogDetails b\n"
                + "on a.BlogId = b.BlogId\n"
                + "where a.BlogId='" + id + "'";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String blogId = rs.getString(1);
                String image = rs.getString(2);
                String title = rs.getString(3);
                String accountM = rs.getString(4);
                String news = rs.getString(5);
                String img2 = rs.getString(6);
                Blogs obj = new Blogs(blogId, image, title, accountM, news, img2);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public List<Blogs> paggingBlog(int index) {
        List<Blogs> list = new ArrayList<>();
        String sql = "select b.BlogId, b.Image, b.Title, b.AccountM,\n"
                + "m.FirstName, m.LastName, m.Email\n"
                + "from Blogs b inner join Marketing m\n"
                + "on b.AccountM = m.AccountM\n"
                + "order by BlogId offset ? rows fetch next 3 rows only";
        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 3);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Blogs(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOBlogs.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public String lastblogIḌ() {
        String sql = "select top 1 blogId from blogs\n"
                + "order by blogId desc";
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

    public Blogs getAllbyBlogID(String BlogId) {
        String sql = "select a.BlogId, a.Image, a.Title, b.News, b.Image,a.AccountM\n"
                + "from Blogs a inner join BlogDetails b\n"
                + "on a.BlogId = b.BlogId"
                + "where a.BlogId='" + BlogId + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Blogs(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6));

            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOBlogs.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        DAOBlogs dao = new DAOBlogs();
//        List<Blogs> list = dao.viewallBlogs();
//        for (Blogs o : list) {
//            System.out.println(o);
//        }
        List<Blogs> list = dao.paggingBlog(1);
        for (Blogs o : list) {
            System.out.println(o);
        }
//        System.out.println(dao.counttotalB());
//        String lastId1 = dao.lastblogIḌ().substring(0, 6);
//        String s1 = lastId1.substring(0, 5);
//        String s2 = lastId1.substring(4);
//        int numnews = Integer.parseInt(s2) + 9;
//        String n = Integer.toString(numnews);
//        String newID = s1.concat(n);
//        System.out.println(newID);
////        List<Blogs> list = dao.BlogsSearch(1, "Summer Hike");
////        System.out.println(list);

        System.out.println(dao.viewBlogsDetail("BL0010    "));
    }
}
