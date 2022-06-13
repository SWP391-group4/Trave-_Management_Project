/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author thinh
 */
public class Reviews {
 public String reviewID;
 public String cus_name;
 public String date;
 public int star;
 public String feedBack;
 public String homeStayID;

    public Reviews() {
    }

    public Reviews(String reviewID, String cus_name, String date, int star, String feedBack, String homeStayID) {
        this.reviewID = reviewID;
        this.cus_name = cus_name;
        this.date = date;
        this.star = star;
        this.feedBack = feedBack;
        this.homeStayID = homeStayID;
    }

    public String getReviewID() {
        return reviewID;
    }

    public void setReviewID(String reviewID) {
        this.reviewID = reviewID;
    }

    public String getCus_name() {
        return cus_name;
    }

    public void setCus_name(String cus_name) {
        this.cus_name = cus_name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public String getFeedBack() {
        return feedBack;
    }

    public void setFeedBack(String feedBack) {
        this.feedBack = feedBack;
    }

    public String getHomeStayID() {
        return homeStayID;
    }

    public void setHomeStayID(String homeStayID) {
        this.homeStayID = homeStayID;
    }

    @Override
    public String toString() {
        return "Reviews{" + "reviewID=" + reviewID + ", cus_name=" + cus_name + ", date=" + date + ", star=" + star + ", feedBack=" + feedBack + ", homeStayID=" + homeStayID + '}';
    }
 
}
