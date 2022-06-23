/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Categories;
import Entity.HomeStayAddressses;

import Entity.HomeStays;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOHomeStays extends connectDB {

    public HomeStays search(String homeStayID) {
        String sql = "select * from accounts where "
                + "homeStayID = '" + homeStayID + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {

                return new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public int addHomeStays(HomeStays hs) {
        int n = 0;
        String sql = "insert into HomeStays(HomeStayId,HomeStayName,CateId) \n"
                + "values ('" + hs.getHomeStayID() + "','" + hs.getHomeStayname() + "','" + hs.getCateID() + "')";

        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int updateHomeStays(HomeStays hs) {
        int n = 0;

        String sql = "UPDATE [dbo].[HomeStays]"
                + "   SET \n"
                + "      [HomeStayName] = ?"
                + "      ,[CateId] = ?"
                + " WHERE [HomeStayId] = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, hs.getHomeStayname());
            pre.setString(2, hs.getCateID());
            pre.setString(3, hs.getHomeStayID());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int removeHomeStays(String id) {
        int n = 0;
        String sql = "DELETE FROM [dbo].[HomeStays]"
                + "      WHERE HomeStayId='" + id + "'";
        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public List<HomeStays> viewallHomeStays() {
        List<HomeStays> vec = new ArrayList<HomeStays>();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[HomeStays]";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String homeStayID = rs.getString(1);
                String homeStayname = rs.getString(2);
                String cateID = rs.getString(3);
                HomeStays obj = new HomeStays(homeStayID, homeStayname, cateID);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public List<HomeStays> viewallHomeStayByAddress() {
        List<HomeStays> vec = new ArrayList<HomeStays>();
        String sql = "select h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,ha.specific,ha.ward from HomeStays h inner join HomeStayAddressses ha on\n"
                + "h.HomeStayid=ha.HomeStayid";
        try {
            Statement state1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state1.executeQuery(sql);
            while (rs.next()) {
                String homeStayID = rs.getString(1);
                String homeStayname = rs.getString(2);
                String cateID = rs.getString(3);
                String city = rs.getString(4);
                String district = rs.getString(5);
                String specific = rs.getString(6);
                String ward = rs.getString(7);
                HomeStays obj = new HomeStays(homeStayID, homeStayname, cateID, city, district, specific, ward);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }
    
    public List<HomeStays> getHomeStaybyCID(String cid) {
              List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,ha.specific,ha.ward,c.CateName from ((HomeStays h inner join HomeStayAddressses ha on\n" +
"                h.HomeStayid=ha.HomeStayid ) inner join Categories c on h.CateId=c.CateId ) where c.CateId=? ";

        try {
          
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cid);
             
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public HomeStayAddressses searchByHomeStay(String homestayID) {
        String sql = "select * from HomeStayAddressses where homestayID = '" + homestayID + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new HomeStayAddressses(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<HomeStayAddressses> getListAddress(List<HomeStays> list) {
        List<HomeStayAddressses> l = new ArrayList<>();
        for (HomeStays o : list) {
            l.add(searchByHomeStay(o.getHomeStayID()));
        }

        return l;
    }

    public int countToDiv() {
        String sql = "select count(*) from HomeStays";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<HomeStays> paggingHomeStay(int index) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,ha.specific,ha.ward,c.CateName from ((HomeStays h inner join HomeStayAddressses ha on\n" +
"                h.HomeStayid=ha.HomeStayid ) inner join Categories c on h.CateId=c.CateId ) order by HomeStayName offset ? rows fetch next 6 rows only\n" +
"";

        try {
          
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 6);
             
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public List<HomeStays> SearchbyProvince(String txtSearch) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,ha.specific,ha.ward,c.CateName from ((HomeStays h inner join HomeStayAddressses ha on\n" +
"                h.HomeStayid=ha.HomeStayid ) inner join Categories c on h.CateId=c.CateId ) where city like '%"+ txtSearch+ "%'";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
               list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
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
                Categories obj = new Categories(cateId, cateName, accountS);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }
     
       public List<HomeStays> getHomeStaybyID(String homeStayID) {
        List<HomeStays> list = new ArrayList<>();
     String sql = "select  h.HomeStayid,h.homestayname,h.cateID "
             + ",ha.city,ha.district,ha.specific,ha.ward,cs.CateName,"
             + "c.BedQty,c.BedRoomQty,c.BathRoomQty,c.LivingRoomQty,c.KitchenQty,c.CheckIn,"
             + "c.CheckOut,c.Price,c.IncurredCost,r.Star,r.Feedback from "
             + "((((HomeStays h inner join HomeStayAddressses ha on h.HomeStayid=ha.HomeStayid ) "
             + "inner join HomeStayDetails c on h.HomeStayId=c.HomeStayId ) "
             + "inner join Reviews r on h.HomeStayId=r.HomeStayId) "
             + "inner join Categories cs on cs.CateId=h.CateId) where h.HomeStayId='" + homeStayID + "'";
        try {
          
            PreparedStatement pre = conn.prepareStatement(sql);
             
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
     
//// Chua xong 
    public static void main(String[] args) {
        DAOHomeStays dao = new DAOHomeStays();
        List<HomeStays> list = dao.paggingHomeStay(1);
//         List<HomeStays> list = dao.getHomeStaybyCID("CATID001");
//        List<HomeStayAddressses> l1 = dao.getListAddress(l);
        for (HomeStays o : list) {
            System.out.println(o);
        }
//int count = dao.countToDiv();
//        System.out.println(count);
//        for (int i = 0; i < l1.size(); i++) {
//            System.out.println(l.get(i).getHomeStayname()+ "  :  " + l1.get(i).getCity());
//        }
//       
//        for (HomeStays o : l) {
//            System.out.println(o); 
//       }
    }
}
