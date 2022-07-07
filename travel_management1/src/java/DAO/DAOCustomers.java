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
 * @author nam
 */
public class DAOCustomers extends connectDB {

    public List<Customers> listCustomer() {
        List<Customers> l = new ArrayList<>();
        String sql = "Select * from customers";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                l.add(new Customers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                ));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public List<Customers> listTop5Customer() {
        List<Customers> l = new ArrayList<>();
        String sql = "Select top 5 * from customers";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                l.add(new Customers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                ));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public Customers getCustomer(String accountC) {
        String sql = "Select * from customers where accountc = '" + accountC + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new Customers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public CustomerAddresses getCustomerAddresses(String accountC) {
        String sql = "Select * from customerAddresses where accountC = '" + accountC + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new CustomerAddresses(
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

    public CustomerImage getImage(String accountC) {
        String sql = "Select * from CustomerImage where accountC = '" + accountC + "'";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new CustomerImage(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public int updateCustomer(Customers cus) {
        int n = 0;
        String sql = "Update Customers set "
                + "firstname =?,"
                + "lastname = ? "
                + "where accountC = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cus.getFirstName());
            pre.setString(2, cus.getLastName());
            pre.setString(3, cus.getAccountC());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomers.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public int updateCustomerEmail(String email, String accountC) {
        int n = 0;
        String sql = "Update Customers set "
                + "email = ? "
                + "where accountC = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, email);
            pre.setString(2, accountC);
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public int updateCustomerStatus(int status, String accountC) {
        int n = 0;
        String sql = "Update Customers set "
                + "status = ? "
                + "where accountC = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, status);
            pre.setString(2, accountC);
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public int updateCustomerImage(String src, String accountC) {
        int n = 0;
        String sql = "update CustomerImage set "
                + "Img_Avatar = ? "
                + "where AccountC = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, src);
            pre.setString(2, accountC);
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public int updateCustomerAddress(CustomerAddresses cusAdd) {
        int n = 0;
        String sql = "Update CustomerAddresses set "
                + "city =?,"
                + "district =?,"
                + "specific =?,"
                + "ward = ? "
                + "where accountC = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, cusAdd.getCity());
            pre.setString(2, cusAdd.getDistrict());
            pre.setString(3, cusAdd.getSpecific());
            pre.setString(4, cusAdd.getWard());
            pre.setString(5, cusAdd.getAccountC());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomers.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public int totalUser() {
        String sql = "select count(accountc) from customers";
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

    public int totalUser(String str) {
        String sql = "select count(accountc) from customers "
                + "where "
                + "accountC like '%" + str + "%' or "
                + "firstName like '%" + str + "%' or \n"
                + "lastName like '%" + str + "%' or \n"
                + "email like '%" + str + "%' or \n"
                + "phone like '%" + str + "%'\n";
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

    public List<Customers> pagging(int index) {
        List<Customers> l = new ArrayList<>();
        String sql = "Select * from customers\n"
                + "order by accountC \n"
                + "offset ? \n"
                + "rows fetch next 5 rows only;";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 5);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                l.add(new Customers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                ));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public List<Customers> pagging(int index, String str) {
        List<Customers> l = new ArrayList<>();
        String sql = "Select * from customers where \n"
                + "accountC like '%" + str + "%' or "
                + "firstName like '%" + str + "%' or \n"
                + "lastName like '%" + str + "%' or \n"
                + "email like '%" + str + "%' or \n"
                + "phone like '%" + str + "%'\n"
                + "order by accountC \n"
                + "offset ? \n"
                + "rows fetch next 5 rows only;";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 5);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                l.add(new Customers(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                ));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public int contactAdmin(MessageAdmin mess) {
        int n = 0;
        String sql = "insert into messengerCA (caption, description, messrole, accountC) "
                + "values(?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, mess.getCaption());
            pre.setString(2, mess.getDescription());
            pre.setInt(3, 1);
            pre.setString(4, mess.getAccountC());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomers.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public int counttotalC() {
        String sql = "select count(*) from customers ";
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

    public static void main(String[] args) {
        DAOCustomers dao = new DAOCustomers();
        List<Customers> l = dao.pagging(2);
        System.out.println(l.size());

    }
}
