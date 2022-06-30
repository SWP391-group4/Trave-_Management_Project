/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.connectDB;
import Entity.Rules;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author phams
 */
public class DAORules  extends connectDB {
        public List<Rules> getRulebyHomeStayID(String homeStayID) {
        List<Rules> list = new ArrayList<>();
        String sql = "select homeStayID,ListRules from Rules where HomeStayId=  '" + homeStayID + "'";

        try {
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Rules(
                        rs.getString(1),
                        rs.getString(2)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
        public static void main(String[] args) {
            DAORules dao = new DAORules();
        List<Rules> list = dao.getRulebyHomeStayID("HS0001");
        for(Rules temp:list){
            System.out.println(temp);
        }
        }
//    }<li>${o.date}</li><p>${o.feedBack}</p>
}
