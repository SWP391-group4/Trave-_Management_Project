/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.RestaurantAddresses;
import Entity.Restaurants;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author name
 */
public class DAORestaurants extends DBContext.connectDB {

    public List<Restaurants> listRestaurant() {
        String sql = "select * from restaurants";
        List<Restaurants> l = new ArrayList<>();
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                l.add(new Restaurants(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORestaurants.class.getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }

    public List<Restaurants> listFirstThree() {
        String sql = "select top 3 * from restaurants ";
        List<Restaurants> l = new ArrayList<>();
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                l.add(new Restaurants(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORestaurants.class.getName()).log(Level.SEVERE, null, ex);
        }
        return l;
    }

    public RestaurantAddresses searchByRestaurant(String addressId) {
        String sql = "select * from RestaurantAddresses where addressId = '" + addressId + "'";

        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return new RestaurantAddresses(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORestaurants.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getMaxSize(String restaurantId) {
        String sql = "select top 1 tableSize from tables where restaurantId = '"+restaurantId+"' order by tableSize desc";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAORestaurants.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public int getMinSize(String restaurantId) {
        String sql = "select top 1 tableSize from tables where restaurantId = '"+restaurantId+"' order by tableSize asc";
        ResultSet rs = getData(sql);
        try {
            if (rs.next()) {
                return rs.getInt(1);
            }
            return 0;
        } catch (SQLException ex) {
            Logger.getLogger(DAORestaurants.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public List<RestaurantAddresses> getListAddress(List<Restaurants> list) {
        List<RestaurantAddresses> l = new ArrayList<>();
        for (Restaurants o : list) {
            l.add(searchByRestaurant(o.getAddressId()));
        }

        return l;
    }
    public List<Integer> getListMax(List<Restaurants> list) {
        List<Integer> l = new ArrayList<>();
        for (Restaurants o : list) {
            l.add(getMaxSize(o.getRestaurantId()));
        }

        return l;
    }
        public List<Integer> getListMin(List<Restaurants> list) {
        List<Integer> l = new ArrayList<>();
        for (Restaurants o : list) {
            l.add(getMinSize(o.getRestaurantId()));
        }

        return l;
    }
    public static void main(String[] args) {
        DAORestaurants dao = new DAORestaurants();
        List<Restaurants> l = dao.listRestaurant();
        List<RestaurantAddresses> l1 = dao.getListAddress(l);

        for (int i = 0; i < l1.size(); i++) {
            System.out.println(l.get(i).getRestaurantName() + "  :  " + l1.get(i).getCity());
        }
        System.out.println(l.size());
        System.out.println(l1.size());
//        List<Restaurants> l = dao.listFirstThree();
//        for (Restaurants o : l) {
//            System.out.println(o); 
//        }
    }
}
