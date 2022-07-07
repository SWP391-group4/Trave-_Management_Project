/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.HomeStays;
import Entity.SupplierAddresses;
import Entity.SupplierHomestays;
import Entity.SupplierImage;
import Entity.Suppliers;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phams
 */
public class DAOSupplier extends connectDB {

    public Suppliers getSuppiler(String accountS) {
        String sql = "Select * from Suppliers where accountS = '" + accountS + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Suppliers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public SupplierAddresses getSupplierAddresses(String accountS) {
        String sql = "Select * from SupplierAddresses where accountS = '" + accountS + "'";
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
            ex.printStackTrace();
        }
        return null;
    }
// public List<Suppliers> getHomeStayByAccountS(String accountS) {
//      List<Suppliers> list = new ArrayList<>();
//        String sql = "select h.HomeStayId,h.homestayname,c.catename from Suppliers s inner join HomeStays h on s.AccountS =h.AccountS inner join Categories c on\n" +
//"c.CateId=h.CateId where s.AccountS ='" + accountS + "'";
//        ResultSet rs = getData(sql);
//        try {
//            if (rs.next()) {
//                return new Suppliers(
//                        rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3) );
//            }
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//        }
//        return null;
//    }

    public int updateSupplierEmail(String email, String accountS) {
        int n = 0;
        String sql = "Update Suppliers set "
                + "email = ? "
                + "where accountS = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, email);
            pre.setString(2, accountS);
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public List<Suppliers> getHomeStayByAccountS(String accountS) {
        List<Suppliers> list = new ArrayList<>();
        String sql = "select h.HomeStayId,h.homestayname,c.catename from Suppliers s inner join HomeStays h on s.AccountS =h.AccountS inner join Categories c on\n"
                + "c.CateId=h.CateId where s.AccountS ='" + accountS + "'";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Suppliers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<Suppliers> getHomeStayByAccountS(List<HomeStays> listHome) {
        List<Suppliers> list = new ArrayList<>();
        for (HomeStays o : listHome) {
            list.add(getSuppiler(o.getAccountS()));
        }
        return list;
    }

    public List<Suppliers> listTopTenSupplier() {
        List<Suppliers> list = new ArrayList<>();
        String sql = "select top 10 * from suppliers";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                list.add(new Suppliers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return list;
    }

    public List<SupplierHomestays> listHomestayBySupplier() {
        List<SupplierHomestays> list = new ArrayList<>();
        String sql = "select s.AccountS, s.firstName,s.lastName,s.email,s.phone,h.homestayId, h.homestayName\n"
                + "from Homestays h "
                + "inner join Suppliers s "
                + "on h.AccountS = s.AccountS\n"
                + "group by s.AccountS, s.firstName,s.lastName,s.email,s.phone,h.homestayId,h.homestayName";
        ResultSet rs = getData(sql);
        try {
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
            ex.printStackTrace();
        }

        return list;
    }

    public List<SupplierHomestays> listTop10Homestay() {
        List<SupplierHomestays> list = listHomestayBySupplier();
        List<SupplierHomestays> listTop = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            listTop.add(list.get(i));
        }
        return listTop;
    }

    public int updateSupplier(Suppliers sp) {
        int n = 0;
        String sql = "Update Suppliers set "
                + "firstname =?,"
                + "lastname = ?,"
                + "phone=?,"
                + "fax=? "
                + "where accountS = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, sp.getFirstName());
            pre.setString(2, sp.getLastName());
            pre.setString(3, sp.getPhone());
            pre.setString(4, sp.getFax());
            pre.setString(5, sp.getAccountS());

            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplier.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public SupplierImage getSUPImage(String accountS) {
        String sql = "select  img_Avatar from SupplierImage where AccountS= '" + accountS + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new SupplierImage(
                        rs.getString(1)
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public int updateSUPImage(String accountS, String sim) {
        int n = 0;
        String sql = "UPDATE [SupplierImage]\n"
                + "   SET Img_Avatar = ?"
                + " WHERE AccountS = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, sim);
            pre.setString(2, accountS);
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int updateSupplierAddress(SupplierAddresses sa) {
        int n = 0;
        String sql = "Update SupplierAddresses set "
                + "city =?,"
                + "district =?,"
                + "specific =?,"
                + "ward = ? "
                + "where accountS = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, sa.getCity());
            pre.setString(2, sa.getDistrict());
            pre.setString(3, sa.getSpecific());
            pre.setString(4, sa.getWard());
            pre.setString(5, sa.getAccountS());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOSupplier.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public int addSuppliers(Suppliers sup) {
        int n = 0;
        String sql = "insert into Suppliers(accountS,firstName,lastName,fax,email,phone,status) \n"
                + "values (?,?,?,?,?,?,?)";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, sup.getAccountS());
            pre.setString(2, sup.getFirstName());
            pre.setString(3, sup.getLastName());
            pre.setString(4, sup.getFax());
            pre.setString(5, sup.getEmail());
            pre.setString(6, sup.getPhone());
            pre.setInt(7, sup.getStatus());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public String view5Suppliers() {
        String sql = "select top 5 count(HomeStayId) as count ,h.AccountS,s.FirstName,s.LastName,s.Phone from HomeStays h\n"
                + "inner join Suppliers s on s.AccountS=h.AccountS\n"
                + "group by h.AccountS,s.FirstName,s.LastName,s.Phone\n"
                + "order by count desc";
        return sql;
    }

    public static void main(String[] args) {
        DAOSupplier d = new DAOSupplier();
        SupplierImage s = d.getSUPImage("2convitcon");
        System.out.println(s);
//        List<Suppliers> list = d.getSuppiler("2convitcon");
//        Suppliers list = d.updateSUPImage("2convitcon","co.jpg");
//        System.out.println(list);
//        for (Suppliers temp : list) {
//            System.out.println(temp);
//        }
//        int n = d.addSuppliers(new Suppliers("haianh123", "Tung", "Nguyen", "123456789", "tungnon@123", "0865965402",0));
//        System.out.println(n);
    }
}
