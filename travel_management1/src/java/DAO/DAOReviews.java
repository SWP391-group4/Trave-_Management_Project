/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;


import DBContext.connectDB;
import Entity.Reviews;
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
public class DAOReviews extends connectDB{
   public List<Reviews> getFeedbackByHID(String homeStayID) {
        List<Reviews> list = new ArrayList<>();
        String sql = "select r.reviewID, r.Cus_name,r.Date,r.Star,r.FeedBack,r.homeStayID from Reviews r inner join HomeStays h on r.HomeStayId=h.HomeStayId where r.HomeStayId=? ";

        try {

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, homeStayID);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Reviews(rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOHomeStays.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
     public int addComment(Reviews r) {
        int n = 0;
        String sql = "INSERT INTO [dbo].Reviews(ReviewId,Cus_Name,Star,Feedback,HomeStayId)\n" +
"       VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, r.getReviewID());
            pre.setString(2, r.getCus_name());
            pre.setInt(3, r.getStar());
            pre.setString(4, r.getFeedBack());
            pre.setString(5, r.getHomeStayID());
                      n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
   
    public static void main(String[] args) {
        DAOReviews dao = new DAOReviews();
         List<Reviews> list=dao.getFeedbackByHID("HS0002");
         for(Reviews temp: list){
             System.out.println(temp);
         }
    }
    
}
