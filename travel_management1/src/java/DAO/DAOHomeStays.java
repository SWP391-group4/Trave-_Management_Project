/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Categories;
import Entity.Extensions;
import Entity.HomeStayAddressses;
import Entity.HomeStayDetails;

import Entity.HomeStays;
import Entity.Images;
import Entity.Rules;
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
        String sql = "insert into HomeStays \n"
                + "values (?,?,?,?,2)";

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

    public HomeStays getLastHomestayId() {
        String sql = "select top 1 * from homestays order by homestayId desc";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccounts.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public String getIdAuto() {
        String id = getLastHomestayId().getHomeStayID();
        String[] idComponent = id.trim().split("HS");
        try {
            int code = Integer.parseInt(idComponent[1]) + 1;
            return "HS" + code;
        } catch (Exception e) {
        }
        return null;
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
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID "
                + ",ha.city,ha.district,\n"
                + "                ha.specific,ha.ward,"
                + "c.CateName,hd.price,h.Status from \n"
                + "                ((HomeStays h inner join"
                + " HomeStayAddressses ha on\n"
                + "               h.HomeStayid=ha.HomeStayid )\n"
                + " inner join Categories c on h.CateId=c.CateId )\n"
                + " inner join HomeStayDetails hd "
                + "n h.HomeStayId=hd.HomeStayId  "
                + "where c.CateId=?";

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
        String sql = "select * from HomeStayAddressses where homestayID ="
                + " '" + homestayID + "'";

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

    public HomeStays getHomestayById(String homestayId) {
        String sql = "select * from homestays where homestayId = '" + homestayId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public Categories getCategory(String homestayId) {
        String sql = "select "
                + "c.cateId, "
                + "c.cateName "
                + "from homestays h "
                + "inner join "
                + "categories c "
                + "on c.cateId = h.cateId "
                + "where homestayId"
                + " = '" + homestayId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Categories(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Extensions getExtension(String homestayId) {
        String sql = "select * from Extensions where homestayId = '" + homestayId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Extensions(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<String> getExtenstion(Extensions e) {
        String listExtenstions = e.getListExtentions();
        String[] list = listExtenstions.split(",");
        List<String> l = new ArrayList<>();
        for (String o : list) {
            l.add(o);
        }
        return l;
    }

    public Rules getRule(String homestayId) {
        String sql = "select * from Rules where homestayId = '" + homestayId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Rules(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Images> getImage(String homestayId) {
        List<Images> list = new ArrayList<>();
        String sql = "select c.cateId, "
                + "c.cateName "
                + "from homestays h "
                + "inner join images i "
                + "on c.homestayId = h.homestayId "
                + "where homestayId = '" + homestayId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                list.add(new Images(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public HomeStayDetails getHomestayDetail(String homestayId) {
        String sql = "select d.homestayId, BedRoomQty, BathRoomQty, LivingRoomQty, KitchenQty, BedQty"
                + ", CheckIn, CheckOut, Price, Description, IncurredCost, Video "
                + "from homestays h "
                + "inner join homestayDetails d "
                + "on h.homestayId = d.homestayId "
                + "where h.homestayId = '" + homestayId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new HomeStayDetails(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10),
                        rs.getDouble(11),
                        rs.getString(12));
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
//'%" + txtSearch + "%'

    public int countoDivforSearchCity(String txtSearch) {
        String sql = "select count(*) from HomeStayAddressses where city like ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, "%" + txtSearch + "%");
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public int countoDivforSearchName(String txtSearchName) {
        String sql = "select count(*) from HomeStays where homestayname like ?";
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

    public int totalPendingHomestay() {
        String sql = "select count(*) from "
                + "homestays h inner join suppliers s "
                + "on h.accountS = s.accountS "
                + " where h.status = 2 and s.status = 1";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public int totalPendingHomestaySearch(String search) {
        String sql = "select count(*) from "
                + "homestays h inner join suppliers s "
                + "on h.accountS = s.accountS "
                + " where h.status = 2 and s.status = 1 "
                + "and ("
                + " h.homestayName like '%" + search + "%' or "
                + "s.firstname like '%" + search + "%' or "
                + "s.lastname like '%" + search + "%' )";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<HomeStays> paggingHomestayPending(int index) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select * from"
                + " homestays h inner join suppliers s \n"
                + "on h.accountS = s.accountS "
                + "where h.status = 2 and s.status = 1\n"
                + "order by h.AccountS \n"
                + "offset ?\n"
                + "rows fetch\n"
                + "next 5 rows \n"
                + "only;";
        PreparedStatement pre;
        try {
            pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 5);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<HomeStays> paggingHomestayPendingSearch(int index, String search) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select * from"
                + " homestays h inner join suppliers s \n"
                + "on h.accountS = s.accountS "
                + "where h.status = 2 and s.status = 1\n"
                + "and ("
                + " h.homestayName like '%" + search + "%' or "
                + "s.firstname like '%" + search + "%' or "
                + "s.lastname like '%" + search + "%' )"
                + "order by h.AccountS \n"
                + "offset ?\n"
                + "rows fetch\n"
                + "next 5 rows \n"
                + "only;";
        PreparedStatement pre;
        try {
            pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 5);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<HomeStays> paggingHomeStay(int index) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select h.HomeStayid,h.homestayname,h.cateID \n"
                + "                ,ha.city,ha.district,\n"
                + "                 ha.specific,ha.ward,c.CateName,\n"
                + "                hd.price,h.Status,AVG(r.star) \n"
                + "                as avgstar from \n"
                + "              HomeStays h inner join HomeStayAddressses ha\n"
                + "                on h.HomeStayid=ha.HomeStayid \n"
                + "                 inner join Categories c \n"
                + "              on h.CateId=c.CateId \n"
                + "      inner join HomeStayDetails hd\n"
                + "          on h.HomeStayId=hd.HomeStayId\n"
                + "      inner join Reviews r on r.HomeStayId=h.HomeStayId\n"
                + "group by h.HomeStayId,h.HomeStayName,\n"
                + "       h.CateId,ha.City,ha.district,\n"
                + "     ha.specific,ha.ward,c.CateName,hd.price,h.Status\n"
                + "            order by HomeStayId offset ? rows fetch next 10 rows only ";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 10);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getInt(10),
                        rs.getDouble(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<HomeStays> paggingHomeStaybyCATEID(int index, String CateID) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,"
                + "h.cateID ,ha.city,ha.district,\n"
                + " ha.specific,ha.ward,c.CateName,hd.price,"
                + "h.Status,avg(r.star)as Saravg from \n"
                + " ((HomeStays h inner join HomeStayAddressses ha on\n"
                + " h.HomeStayid=ha.HomeStayid )\n"
                + " inner join Categories c on h.CateId=c.CateId )\n"
                + " inner join HomeStayDetails hd on h.HomeStayId=hd.HomeStayId\n"
                + " inner join Reviews r on r.HomeStayId=h.HomeStayId \n"
                + " where h.cateID='" + CateID + "'\n"
                + " group by  h.HomeStayid,h.homestayname,"
                + "h.cateID ,ha.city,ha.district,\n"
                + " ha.specific,ha.ward,c.CateName,hd.price,h.Status \n"
                + "order by HomeStayName "
                + "offset ? rows fetch next 6 rows only ";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 6);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getInt(10),
                        rs.getDouble(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

//    public List<HomeStays> paggingbYCID(String cateid, int index) {
//        List<HomeStays> list = new ArrayList<>();
//        String sql = "with x as( select ROW_NUMBER() over ( order by homestayname desc) as numberID,h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,\n"
//                + "                            ha.specific,ha.ward,c.CateName,hd.price,h.Status from \n"
//                + "                            ((HomeStays h inner join HomeStayAddressses ha on\n"
//                + "                             h.HomeStayid=ha.HomeStayid )\n"
//                + "                             inner join Categories c on h.CateId=c.CateId )\n"
//                + "                              inner join HomeStayDetails hd on h.HomeStayId=hd.HomeStayId where c.CateId='" + cateid + "')select * from x where numberID between ? and ?";
//        try {
//            PreparedStatement pre = conn.prepareStatement(sql);
//            pre.setInt(1, (index - 1) * 6);
//            pre.setInt(2, index * 6);
//            ResultSet rs = pre.executeQuery();
//            while (rs.next()) {
//                list.add(new HomeStays(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getDouble(10), rs.getInt(11)));
//
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//    }
    public List<HomeStays> SearchbyProvince(int index, String txtSearch) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district, \n"
                + "   ha.specific,ha.ward,c.CateName,hd.price,h.Status,avg(r.star)as Saravg from  \n"
                + "    ((HomeStays h inner join HomeStayAddressses ha on \n"
                + "    h.HomeStayid=ha.HomeStayid ) \n"
                + "     inner join Categories c on h.CateId=c.CateId ) \n"
                + "     inner join HomeStayDetails hd on h.HomeStayId=hd.HomeStayId \n"
                + "     inner join Reviews r on r.HomeStayId=h.HomeStayId  \n"
                + "     where ha.city like  '%" + txtSearch + "%' or\n"
                + "	h.HomeStayName like '%" + txtSearch + "%' \n"
                + "	or ha.District like '%" + txtSearch + "%' or\n"
                + "	ha.Specific like '%" + txtSearch + "%' or\n"
                + "	ha.Ward like '%" + txtSearch + "%' \n"
                + "     group by  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district, \n"
                + "     ha.specific,ha.ward,c.CateName,hd.price,h.Status  \n"
                + "     order by HomeStayName offset ? rows fetch next 6 rows only";
        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 6);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getInt(10),
                        rs.getDouble(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<HomeStays> SearchbyName(int index, String txtSearch) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,\n"
                + "                             ha.specific,ha.ward,c.CateName,hd.price,"
                + "h.Status,avg(r.star)as Saravg from \n"
                + "                             ((HomeStays h inner join HomeStayAddressses ha on\n"
                + "                           h.HomeStayid=ha.HomeStayid )\n"
                + "                              inner join Categories c on h.CateId=c.CateId )\n"
                + "                               inner join HomeStayDetails hd "
                + "on h.HomeStayId=hd.HomeStayId\n"
                + "               inner join Reviews r on r.HomeStayId=h.HomeStayId \n"
                + "                				where"
                + " h.homestayname like '%" + txtSearch + "%'\n"
                + "                group by  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,\n"
                + "                              ha.specific,ha.ward,c.CateName,hd.price,h.Status \n"
                + "                          order by HomeStayName offset ? rows fetch next 6 rows only";
        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 6);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getInt(10),
                        rs.getDouble(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<HomeStays> SearchbyPrice(int index, int min, int max) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,"
                + "ha.city,ha.district,\n"
                + " ha.specific,ha.ward,c.CateName,hd.price,\n"
                + "               h.Status,avg(r.star)as Saravg from \n"
                + "  ((HomeStays h inner join HomeStayAddressses ha on\n"
                + "  h.HomeStayid=ha.HomeStayid )\n"
                + "  inner join Categories c on h.CateId=c.CateId )\n"
                + "  inner join HomeStayDetails hd \n"
                + "on h.HomeStayId=hd.HomeStayId\n"
                + "  inner join Reviews r "
                + "on r.HomeStayId=h.HomeStayId \n"
                + " where hd.price between"
                + " '" + min + "' and '" + max + "'\n"
                + "  group by  h.HomeStayid,h.homestayname,"
                + "h.cateID ,ha.city,ha.district,\n"
                + " ha.specific,ha.ward,c.CateName,hd.price,h.Status \n"
                + " order by HomeStayName offset ? rows fetch next 6 rows only";
        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 6);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getInt(10),
                        rs.getDouble(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
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
    public List<Images> getIMG(String homestayID) {
        List<Images> list = new ArrayList<>();

        String sql = "select * from Images where HomeStayId='" + homestayID + "'";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Images(
                        rs.getString(1),
                        rs.getString(2)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public HomeStays getHomestay(String homestayId) {
        String sql = "select h.HomeStayId, h.HomeStayName, h.CateId, h.AccountS,\n"
                + "                ha.City, ha.District, ha.Specific, ha.Ward,\n"
                + "                cat.CateName,\n"
                + "                hd.BedQty, hd.BedRoomQty, hd.BathRoomQty, hd.LivingRoomQty, \n"
                + "                hd.KitchenQty, hd.Price, hd.IncurredCost,hd.Description,hd.video ,h.status,avg(star) as starAVG\n"
                + "				\n"
                + "                from HomeStays h \n"
                + "                inner join HomeStayAddressses ha\n"
                + "                on h.HomeStayId = ha.HomeStayId\n"
                + "                inner join Categories cat\n"
                + "                on h.CateId = cat.CateId\n"
                + "                inner join HomeStayDetails hd\n"
                + "                on h.HomeStayId = hd.HomeStayId\n"
                + "				inner join Reviews r on h.HomeStayId=r.HomeStayId \n"
                + "				where h.HomeStayId= '" + homestayId + "' group by  h.HomeStayId, h.HomeStayName, h.CateId, h.AccountS,\n"
                + "                ha.City, ha.District, ha.Specific, ha.Ward,h.status,\n"
                + "                cat.CateName,\n"
                + "                hd.BedQty, hd.BedRoomQty, hd.BathRoomQty, hd.LivingRoomQty, \n"
                + "                hd.KitchenQty, hd.Price, hd.IncurredCost,hd.Description,hd.video  ";

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
                        rs.getDouble(16), rs.getString(17), rs.getString(18), rs.getInt(19), rs.getDouble(20));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public HomeStays getHomestay2(String homestayId) {
        String sql = "select h.HomeStayId, h.HomeStayName, h.CateId, h.AccountS,\n"
                + "                ha.City, ha.District, ha.Specific, ha.Ward,\n"
                + "                cat.CateName,\n"
                + "                hd.BedQty, hd.BedRoomQty, hd.BathRoomQty, hd.LivingRoomQty, \n"
                + "                hd.KitchenQty, hd.Price,hd.Description, hd.IncurredCost,hd.video ,h.status\n"
                + "				\n"
                + "                from HomeStays h \n"
                + "                inner join HomeStayAddressses ha\n"
                + "                on h.HomeStayId = ha.HomeStayId\n"
                + "                inner join Categories cat\n"
                + "                on h.CateId = cat.CateId\n"
                + "                inner join HomeStayDetails hd\n"
                + "                on h.HomeStayId = hd.HomeStayId\n"
                + "				inner join Reviews r on h.HomeStayId=r.HomeStayId \n"
                + "				where h.HomeStayId= '" + homestayId + "'";

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
                        rs.getString(16), rs.getDouble(17), rs.getString(18), rs.getInt(19));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public HomeStays getHomestaybyAccountS(String accountS) {
        String sql = "select h.HomeStayId, h.HomeStayName, h.CateId, h.AccountS,\n"
                + "cat.CateName\n"
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
                        rs.getString(4), rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
//

    public List<HomeStays> getRandomHomeStaybySuppiler(String accountS) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select top 3  h.HomeStayid,h.homestayname,h.cateID \n"
                + "  ,ha.city,ha.district,"
                + "ha.specific,ha.ward,"
                + "cs.CateName,c.Price,"
                + "h.Status,avg(r.star) as starAVG\n"
                + "from \n"
                + "               HomeStays h inner join HomeStayAddressses ha "
                + "on h.HomeStayid=ha.HomeStayid \n"
                + "             inner join HomeStayDetails c "
                + "on h.HomeStayId=c.HomeStayId \n"
                + "            inner join Reviews r "
                + "on h.HomeStayId=r.HomeStayId\n"
                + "      inner join Categories cs "
                + "on cs.CateId=h.CateId where AccountS='" + accountS + "' group by "
                + " h.HomeStayid,h.homestayname,h.cateID \n"
                + " ,ha.city,ha.district,ha.specific,ha.ward,cs.CateName,c.Price,h.Status \n"
                + " ORDER BY NEWID()";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(
                        rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getDouble(9), rs.getInt(10), rs.getDouble(11)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<HomeStays> getHomeStayforSUP(String accountS) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select h.HomeStayId,\n"
                + "                 h.HomeStayName, \n"
                + "                 h.AccountS,\n"
                + "                cat.CateName,\n"
                + "               h.status\n"
                + "              from HomeStays h \n"
                + "                inner join Categories cat\n"
                + "          on h.CateId = cat.CateId\n"
                + "              \n"
                + "                where h.accountS='" + accountS + "'";

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

    public List<HomeStays> getHomeStayforBOOKINGbySUP(String accountS) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select h.HomeStayId,\n"
                + "                h.HomeStayName, \n"
                + "               h.AccountS,\n"
                + "               cat.CateName,\n"
                + "               h.status,b.OrderNumber\n"
                + "              from HomeStays h \n"
                + "               inner join Categories cat\n"
                + "         on h.CateId = cat.CateId\n"
                + "		 inner join Booking b on h.HomeStayId=b.HomeStayId\n"
                + "              where h.accountS='" + accountS + "'";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<HomeStays> getRandomHomeStay() {
        List<HomeStays> vec = new ArrayList<>();
        String sql = "select top 3  h.HomeStayid,h.homestayname,h.cateID \n"
                + "                          ,ha.city,ha.district,ha.specific,ha.ward,cs.CateName,c.Price,h.Status,avg(r.star) as starAVG\n"
                + "                        from \n"
                + "               HomeStays h inner join HomeStayAddressses ha on h.HomeStayid=ha.HomeStayid \n"
                + "             inner join HomeStayDetails c on h.HomeStayId=c.HomeStayId \n"
                + "            inner join Reviews r on h.HomeStayId=r.HomeStayId\n"
                + "      inner join Categories cs on cs.CateId=h.CateId group by  h.HomeStayid,h.homestayname,h.cateID \n"
                + "                          ,ha.city,ha.district,ha.specific,ha.ward,cs.CateName,c.Price,h.Status\n"
                + "	  ORDER BY NEWID()";
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
                double price = rs.getDouble(9);
                int status = rs.getInt(10);
                double star = rs.getDouble(11);
                HomeStays obj = new HomeStays(homeStayID, homeStayname, cateID, city, district, specific, ward, catenamme, price, status, star);
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

    public int countToDivforStatus(int status) {
        String sql = "select count(*) "
                + "from HomeStays where Status = ?";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, status);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<HomeStays> paggingHomeStaybyStatus(int index, int status) {
        List<HomeStays> list = new ArrayList<>();
        String sql = "select  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,\n"
                + "                             ha.specific,ha.ward,c.CateName,hd.price,h.Status,avg(r.star)as Saravg from \n"
                + "                             ((HomeStays h inner join HomeStayAddressses ha on\n"
                + "                           h.HomeStayid=ha.HomeStayid )\n"
                + "                              inner join Categories c on h.CateId=c.CateId )\n"
                + "                               inner join HomeStayDetails hd on h.HomeStayId=hd.HomeStayId\n"
                + "               inner join Reviews r on r.HomeStayId=h.HomeStayId \n"
                + "                				where h.status='" + status + "'\n"
                + "                group by  h.HomeStayid,h.homestayname,h.cateID ,ha.city,ha.district,\n"
                + "                              ha.specific,ha.ward,c.CateName,hd.price,h.Status \n"
                + "                          order by HomeStayName offset ? rows fetch next 6 rows only  ";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 10);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new HomeStays(rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getDouble(9), rs.getInt(10), rs.getDouble(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int updateHomeStayStatus(HomeStays h) {
        int n = 0;
        String sql = "Update HomeStays set "
                + "status = ?,"
                + "cateid=? "
                + "where homeStayID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, h.getStatus());
            pre.setString(2, h.getCateID());
            pre.setString(3, h.homeStayID);
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public int updateHomeStayDetail(HomeStayDetails hd) {
        int n = 0;
        String sql = "Update HomeStayDetails set\n"
                + "                BedQty=?,\n"
                + "		   BathRoomQty=?,\n"
                + "		   LivingRoomQty=?,\n"
                + "		   KitchenQty=?,\n"
                + "		   BedRoomQty=?,\n"
                + "		   CheckIn=?,\n"
                + "		   CheckOut=?,\n"
                + "		   price=?,\n"
                + "		   IncurredCost=?,[Description]=?,\n"
                + "		   Video=?\n"
                + "		   where HomeStayId=?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, hd.getBedQty());
            pre.setInt(2, hd.getBathRoomQty());
            pre.setInt(3, hd.getLivingRoomQty());
            pre.setInt(4, hd.getKitchenQty());
            pre.setInt(5, hd.getBedRoomQty());
            pre.setString(6, hd.getCheckIn());
            pre.setString(7, hd.getCheckOut());
            pre.setDouble(8, hd.getPrice());
            pre.setDouble(9, hd.getIncurredCost());
            pre.setString(10, hd.getDescription());
            pre.setString(11, hd.getVideo());
            pre.setString(12, hd.getHomestayid());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public int updateRules(Rules r) {
        int n = 0;
        String sql = "Update Rules set\n"
                + "          ListRules=?\n"
                + "		   where HomeStayId=?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, r.getListRules());
            pre.setString(2, r.getHomeStayId());

            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public int updateExtensions(Extensions e) {
        int n = 0;
        String sql = "Update Extensions set\n"
                + "          ListExtensions=?\n"
                + "		   where HomeStayId=?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, e.getListExtentions());
            pre.setString(2, e.getHomeStayId());

            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public static void main(String[] args) {
        DAOHomeStays dao = new DAOHomeStays();
//        int count = dao.updateHomeStayStatus(new HomeStays("HS0001", "CATID002  ", 0));
//        System.out.println(count);
//
//        String code = dao.getIdAuto();
//        System.out.println(code);
        List<HomeStays> list = dao.paggingHomestayPendingSearch(1, "dieu");
        int total = dao.totalPendingHomestaySearch("dieu");
        System.out.println(total);
        for (HomeStays temp : list) {
            System.out.println(temp);
        }
//        HomeStays h = new HomeStays();
//h=dao.getHomestaybyAccountS("2convitcon");
//        System.out.println(h);
//    }

    }
}
