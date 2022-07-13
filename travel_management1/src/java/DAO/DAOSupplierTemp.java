/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOSupplierTemp extends connectDB {

    public int totalSupplier() {
        String sql = "select count(accounts) from suppliers";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int totalPending() {
        String sql = "select count(accounts) from suppliers s where s.status = 0";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int totalPending(String str) {
        String sql = "select count(accounts) from suppliers s where s.status = 0"
                + "and ( firstName like '%" + str + "%' or \n"
                + "lastName like '%" + str + "%' or \n"
                + "email like '%" + str + "%' or \n"
                + "phone like '%" + str + "%')";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<SupplierHomestays> pagging(int index) {
        List<SupplierHomestays> list = new ArrayList<>();
        String sql = "select s.AccountS, s.firstName,s.lastName,s.email,s.phone,h.homestayId,h.homestayName\n"
                + "from Homestays h "
                + "inner join Suppliers s "
                + "on h.AccountS = s.AccountS\n"
                + "order by HomeStayName "
                + "offset ? "
                + "rows fetch "
                + "next 7 rows "
                + "only;";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 7);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new SupplierHomestays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Suppliers> paggingPending(int index) {
        List<Suppliers> list = new ArrayList<>();
        String sql = "select * from Suppliers s \n"
                + "where s.status = 0 \n"
                + "order by s.AccountS \n"
                + "offset ?\n"
                + "rows fetch\n"
                + "next 7 rows \n"
                + "only;";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 7);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Suppliers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
        public List<Suppliers> paggingPending(int index, String str) {
        List<Suppliers> list = new ArrayList<>();
        String sql = "select * from Suppliers s \n"
                + "where s.status = 0 \n"
                + "and ( firstName like '%" + str + "%' or \n"
                + "lastName like '%" + str + "%' or \n"
                + "email like '%" + str + "%' or \n"
                + "phone like '%" + str + "%') "
                + "order by s.AccountS \n"
                + "offset ?\n"
                + "rows fetch \n"
                + "next 7 rows \n"
                + "only;";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 7);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Suppliers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<SupplierHomestays> paggingSearch(int index, String str) {
        List<SupplierHomestays> list = new ArrayList<>();
        String sql = "select s.accountS, firstName,lastName,email, phone, homestayId, homestayName, cateId\n"
                + "from suppliers s inner join homestays h on\n"
                + "s.AccountS = h.AccountS where \n"
                + "firstName like '%" + str + "%' or \n"
                + "lastName like '%" + str + "%' or \n"
                + "email like '%" + str + "%' or \n"
                + "homestayName like '%" + str + "%'"
                + "order by HomeStayName "
                + "offset ? "
                + "rows fetch "
                + "next 7 rows "
                + "only;";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 7);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new SupplierHomestays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int countToDivBySearch(String str) {
        String sql = "select count(homestayId)\n"
                + "from suppliers s inner join homestays h on\n"
                + "s.AccountS = h.AccountS where\n"
                + "firstName like '%" + str + "%' or \n"
                + "lastName like '%" + str + "%' or \n"
                + "email like '%" + str + "%' or \n"
                + "homestayName like '%" + str + "%'";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public SupplierHomestays getPreview(String homestayId) {

        String sql = "select s.accountS, firstName,lastName, fax, \n"
                + "email, phone, homestayId, homestayName, cateId\n"
                + "from suppliers s, homestays h \n"
                + "where s.accountS = h.accountS "
                + " and HomeStayId = '" + homestayId + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new SupplierHomestays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String getCategoryName(String cateId) {
        String sql = "select cateName from Categories where cateId = '" + cateId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public HomeStayAddressses getHomeStay(String homestayID) {
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

    public HomeStays getHomeStayInfo(String homestayID) {
        String sql = "select * from homeStays where homestayID = '" + homestayID + "'";

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

    public HomeStayDetails getHomestayDetails(String homestayId) {
        String sql = "select * from HomeStayDetails where homestayID = '" + homestayId + "'";
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
            ex.printStackTrace();
        }
        return null;
    }

    public Categories getCategories(String HomeStayId) {
        String sql = "select * from Categories c inner join Homestays h "
                + " on c.cateId = h.cateId"
                + " where homestayID = '" + HomeStayId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Categories(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public Extensions getExtenstion(String HomeStayId) {
        String sql = "select * from Extensions "
                + " where homestayID = '" + HomeStayId + "'";
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

    public Rules getRule(String homeStayId) {
        String sql = "select * from rules where homestayId = '" + homeStayId + "'";
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

    public Suppliers getSupplierById(String supplierId) {
        String sql = "select * from suppliers where accountS = '" + supplierId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Suppliers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));

            }

        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Suppliers getSupplier(String homestayId) {
        String sql = "select * from suppliers s inner join homestays h on s.accountS = h.accountS where homestayId = '" + homestayId + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Suppliers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));

            }

        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public SupplierAddresses getSupplierAddress(String accountS) {
        String sql = "select * from SupplierAddresses where accountS = '" + accountS + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new SupplierAddresses(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));

            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public SupplierImage getSupplierImage(String accountS) {
        String sql = "select * from SupplierImage where accountS = '" + accountS + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new SupplierImage(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));

            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getEvaluate(String homestayID) {
        String sql = "select avg(star) from reviews where HomeStayId = '" + homestayID + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);

            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int updateSupplierStatus(String supplierId) {
        String sql = "update suppliers set status = 1 where accountS = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, supplierId);
            int n = pre.executeUpdate();
            return n;
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<SupplierHomestays> search(String str) {
        List<SupplierHomestays> l = new ArrayList<>();
        String sql = "select s.accountS, firstName,lastName,email, phone, homestayId, homestayName, cateId\n"
                + "from suppliers s inner join homestays h on\n"
                + "s.AccountS = h.AccountS where\n"
                + "firstName like '%" + str + "%' or \n"
                + "lastName like '%" + str + "%' or \n"
                + "email like '%" + str + "%' or \n"
                + "homestayName like '%" + str + "%'";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                l.add(new SupplierHomestays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));

            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }

    public List<HomeStays> getListHoneStayBySupplierId(String supplierId) {
        List<HomeStays> l = new ArrayList<>();
        String sql = "Select * from homestays where accountS = '" + supplierId + "'";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                l.add(new HomeStays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5)));

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public int addSupplier(Suppliers suppliers) {
        String sql = "insert into suppliers values (?,?,?,?,?,?,?)";
        PreparedStatement pre;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, suppliers.getAccountS());
            pre.setString(2, suppliers.getFirstName());
            pre.setString(3, suppliers.getLastName());
            pre.setString(4, suppliers.getFax());
            pre.setString(5, suppliers.getEmail());
            pre.setString(6, suppliers.getPhone());
            pre.setInt(7, 0);
            return pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return 0;
    }
    public int addSupplierAddress(SupplierAddresses address) {
        String sql = "insert into SupplierAddresses values (?,?,?,?,?)";
        PreparedStatement pre;
        try {
            pre = conn.prepareStatement(sql);
            pre.setString(1, address.getAccountS());
            pre.setString(2, address.getCity());
            pre.setString(3, address.getDistrict());
            pre.setString(4, address.getWard());
            pre.setString(5, address.getSpecific());
            return pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplierTemp.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return 0;
    }

    public static void main(String[] args) {
        DAOSupplierTemp dao = new DAOSupplierTemp();
        List<Suppliers> list = dao.paggingPending(1);
        List<HomeStays> l = dao.getListHoneStayBySupplierId("123456cainha");
        Categories c = dao.getCategories("123456cainha");
        HomeStayDetails hd = dao.getHomestayDetails("HS0007");
        System.out.println(hd);
    }
}
