/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.SupplierAddresses;
import Entity.SupplierHomestays;
import Entity.Suppliers;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
                        rs.getString(6)
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public SupplierAddresses getSupplierAddresses(String accountS) {
        String sql = "Select * from customerAddresses where accountC = '" + accountS + "'";
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
        String sql = "select s.AccountS, s.firstName,s.lastName,s.email,h.homestayName\n"
                + "from Homestays h inner join Suppliers s on h.AccountS = s.AccountS\n"
                + "group by s.AccountS, s.firstName,s.lastName,s.email,h.homestayName";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                list.add(new SupplierHomestays(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                ));
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

    public static void main(String[] args) {
        DAOSupplier d = new DAOSupplier();
        System.out.println(d.getSuppiler("nguyenphuong"));
    }
}
