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
        String sql = "insert into HomeStays(homeStayID,homeStayname,cateID,accountS) \n"
                + "values (?,?,?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, hs.getHomeStayID());
            pre.setString(2, hs.getHomeStayname());
            pre.setString(3, hs.getCateID());
            pre.setString(4, hs.getAccountS());
            n = pre.executeUpdate();
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
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,\n"
                + "                ha.specific,ha.ward,c.CateName,hd.price,h.Status from \n"
                + "                ((HomeStays h inner join HomeStayAddressses ha on\n"
                + "               h.HomeStayid=ha.HomeStayid )\n"
                + " inner join Categories c on h.CateId=c.CateId )\n"
                + " inner join HomeStayDetails hd on h.HomeStayId=hd.HomeStayId  where c.CateId=?";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cid);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getDouble(9), rs.getInt(10)));
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
        String sql = "select count(*) from HomeStays ";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public int countToDivforCATE(String cateID) {
        String sql = "select count(*) from HomeStays where cateID = ?";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cateID);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<HomeStays> paggingHomeStay(int index) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,"
                + "ha.specific,ha.ward,c.CateName,hd.price,h.Status from "
                + "((HomeStays h inner join HomeStayAddressses ha on\n"
                + "              h.HomeStayid=ha.HomeStayid )"
                + " inner join Categories c on h.CateId=c.CateId )"
                + " inner join HomeStayDetails hd on h.HomeStayId=hd.HomeStayId "
                + "order by HomeStayName offset ? rows fetch next 6 rows only";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 6);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getDouble(9), rs.getInt(10)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<HomeStays> paggingHomeStaybyCATEID(int index, String CateID) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,\n"
                + "               ha.specific,ha.ward,c.CateName,hd.price,h.Status from \n"
                + "                ((HomeStays h inner join HomeStayAddressses ha on\n"
                + "                           h.HomeStayid=ha.HomeStayid )\n"
                + "               inner join Categories c on h.CateId=c.CateId )\n"
                + "                inner join HomeStayDetails hd on h.HomeStayId=hd.HomeStayId \n"
                + "				where h.cateID='" + CateID + "'\n"
                + "            order by HomeStayName offset ? rows fetch next 6 rows only ";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 6);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getDouble(9), rs.getInt(10)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<HomeStays> paggingbYCID(String cateid, int index) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "with x as( select ROW_NUMBER() over ( order by homestayname desc) as numberID,h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,\n"
                + "                            ha.specific,ha.ward,c.CateName,hd.price,h.Status from \n"
                + "                            ((HomeStays h inner join HomeStayAddressses ha on\n"
                + "                             h.HomeStayid=ha.HomeStayid )\n"
                + "                             inner join Categories c on h.CateId=c.CateId )\n"
                + "                              inner join HomeStayDetails hd on h.HomeStayId=hd.HomeStayId where c.CateId='" + cateid + "')select * from x where numberID between ? and ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 6);
            pre.setInt(2, index * 6);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getDouble(10), rs.getInt(11)));

            }

        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<HomeStays> SearchbyProvince(String txtSearch) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,ha.specific,ha.ward,c.CateName from ((HomeStays h inner join HomeStayAddressses ha on\n"
                + "                h.HomeStayid=ha.HomeStayid ) inner join Categories c on h.CateId=c.CateId ) where city like '%" + txtSearch + "%'";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<HomeStays> SearchbyName(String txtSearchname) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,ha.specific,ha.ward,c.CateName from ((HomeStays h inner join HomeStayAddressses ha on\n"
                + "                h.HomeStayid=ha.HomeStayid ) inner join Categories c on h.CateId=c.CateId ) where homestayname like '%" + txtSearchname + "%'";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
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

                Categories obj = new Categories(cateId, cateName);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    // Join sai cach
//    public HomeStays getHomeStaybyID(String homeStayID) {
//
//        String sql = "select  h.HomeStayid,h.homestayname,h.cateID "
//                + ",ha.city,ha.district,ha.specific,ha.ward,cs.CateName,"
//                + "c.BedQty,c.BedRoomQty,c.BathRoomQty,c.LivingRoomQty,c.KitchenQty,c.CheckIn,"
//                + "c.CheckOut,c.Price,c.IncurredCost,r.Star,r.Feedback from "
//                + "((((HomeStays h inner join HomeStayAddressses ha on h.HomeStayid=ha.HomeStayid ) "
//                + "inner join HomeStayDetails c on h.HomeStayId=c.HomeStayId ) "
//                + "inner join Reviews r on h.HomeStayId=r.HomeStayId) "
//                + "inner join Categories cs on cs.CateId=h.CateId) where h.HomeStayId='" + homeStayID + "'";
//
//        try {
//            PreparedStatement pre = conn.prepareStatement(sql);
//            ResultSet rs = pre.executeQuery();
//            while (rs.next()) {
//                return new HomeStays(rs.getString(1),
//                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9),
//                        rs.getInt(10), rs.getInt(11), rs.getInt(12), rs.getInt(13), rs.getString(14), rs.getString(15), rs.getDouble(16),
//                        rs.getDouble(17), rs.getInt(18), rs.getString(19));
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//    }
    public HomeStays getHomestay(String homestayId) {
        String sql = "select h.HomeStayId, h.HomeStayName, h.CateId, h.AccountS,\n"
                + "ha.City, ha.District, ha.Specific, ha.Ward,\n"
                + "cat.CateName,\n"
                + "hd.BedQty, hd.BedRoomQty, hd.BathRoomQty, hd.LivingRoomQty, \n"
                + "hd.KitchenQty, hd.Price, hd.IncurredCost,hd.Description,hd.video \n"
                + "from HomeStays h \n"
                + "inner join HomeStayAddressses ha\n"
                + "on h.HomeStayId = ha.HomeStayId\n"
                + "inner join Categories cat\n"
                + "on h.CateId = cat.CateId\n"
                + "inner join HomeStayDetails hd\n"
                + "on h.HomeStayId = hd.HomeStayId\n"
                + "where h.HomeStayId = '" + homestayId + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getInt(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getDouble(15),
                        rs.getDouble(16), rs.getString(17), rs.getString(18));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public HomeStays getHomestaybyAccountS(String accountS) {
        String sql = "select h.HomeStayId, h.HomeStayName, h.CateId, h.AccountS,\n"
                + "cat.CateName,\n"
                + "from HomeStays h \n"
                + "inner join Categories cat\n"
                + "on h.CateId = cat.CateId\n"
                + "where h.AccountS = '" + accountS + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
//

    public List<HomeStays> getRandomHomeStaybySuppiler(String accountS) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select h.HomeStayId, h.HomeStayName, h.CateId, h.AccountS,\n"
                + "ha.City, ha.District, ha.Specific, ha.Ward,\n"
                + "cat.CateName,\n"
                + "hd.BedQty, hd.BedRoomQty, hd.BathRoomQty, hd.LivingRoomQty, \n"
                + "hd.KitchenQty, hd.Price, hd.IncurredCost,hd.video,hd.description,hd.checkin,hd.checkout, h.status\n"
                + "from HomeStays h \n"
                + "inner join HomeStayAddressses ha\n"
                + "on h.HomeStayId = ha.HomeStayId\n"
                + "inner join Categories cat\n"
                + "on h.CateId = cat.CateId\n"
                + "inner join HomeStayDetails hd\n"
                + "on h.HomeStayId = hd.HomeStayId\n"
                + "where h.accountS = '" + accountS + "'";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getInt(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getDouble(15),
                        rs.getDouble(16),
                        rs.getString(17), rs.getString(18), rs.getString(19), rs.getString(20), rs.getInt(21)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<HomeStays> getHomeStayforSUP(String accountS) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select h.HomeStayId, h.HomeStayName,  h.AccountS,\n"
                + "cat.CateName,h.status \n"
                + "from HomeStays h \n"
                + "inner join Categories cat\n"
                + "on h.CateId = cat.CateId\n"
                + "where h.accountS = '" + accountS + "'";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4), rs.getInt(5)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<HomeStays> getRandomHomeStay() {
        List<HomeStays> vec = new ArrayList<>();
        String sql = " select top 3  h.HomeStayid,h.homestayname,h.cateID \n"
                + "                ,ha.city,ha.district,ha.specific,ha.ward,cs.CateName,\n"
                + "                c.BedQty,c.BedRoomQty,c.BathRoomQty,c.LivingRoomQty,c.KitchenQty,\n"
                + "               c.Price from \n"
                + "                ((((HomeStays h inner join HomeStayAddressses ha on h.HomeStayid=ha.HomeStayid ) \n"
                + "                inner join HomeStayDetails c on h.HomeStayId=c.HomeStayId ) \n"
                + "                inner join Reviews r on h.HomeStayId=r.HomeStayId) \n"
                + "                inner join Categories cs on cs.CateId=h.CateId) ORDER BY NEWID()";
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
                String catenamme = rs.getString(8);
                int bedQty = rs.getInt(9);
                int bedRoomQty = rs.getInt(10);
                int bathRoom = rs.getInt(11);
                int livingRoom = rs.getInt(12);
                int kitchen = rs.getInt(13);
                double price = rs.getDouble(14);
                HomeStays obj = new HomeStays(homeStayID, homeStayname, cateID, city, district, specific, ward, catenamme, bedQty, bedRoomQty, bathRoom, livingRoom, kitchen, price);
                vec.add(obj);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vec;
    }

    public String view5HomeStays() {
        String sql = "select top 5 count(city) as count, city from HomeStayAddressses h\n"
                + "group by City\n"
                + "order by count desc";
        return sql;
    }

    public static void main(String[] args) {
        DAOHomeStays dao = new DAOHomeStays();
//        int count = dao.countToDivforCATE("CATID001");
//        System.out.println(count);
//
//        List<HomeStays> list = dao.paggingbYCID("CATID001", 0);
//     HomeStays h=   dao.getHomeStaybyCID("HS0001");
//        System.out.println(h);
//        List<HomeStayAddressses> l1 = dao.getListAddress(l);
//        for (HomeStays o : list) {
//            System.out.println(o);

//int count = dao.countToDiv();
//        System.out.println(count);
//        for (int i = 0; i < l1.size(); i++) {
//            System.out.println(l.get(i).getHomeStayname()+ "  :  " + l1.get(i).getCity());
//        }
//       //
//        for (HomeStays o : l) {
//            System.out.println(o); 
//       }
//HomeStays s  = new HomeStays("HS0105", "Nikini World","CATID005", "haianh123");
//        HomeStays s = new HomeStays("HS0105", "Nikini World", "CATID005", "haianh123");
//        int n = dao.addHomeStays(s);
//        System.out.println(n);
//        System.out.println(s);
        System.out.println(dao.view5HomeStays());

    }
}
