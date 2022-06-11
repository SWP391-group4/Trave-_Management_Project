/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author thinh
 */
public class HomeStays {
    public String homeStayID;
    public String homeStayname;
    public String cateID;

    public HomeStays() {
    }

    public String getHomeStayID() {
        return homeStayID;
    }

    public void setHomeStayID(String homeStayID) {
        this.homeStayID = homeStayID;
    }

    public String getHomeStayname() {
        return homeStayname;
    }

    public void setHomeStayname(String homeStayname) {
        this.homeStayname = homeStayname;
    }

    public String getCateID() {
        return cateID;
    }

    public void setCateID(String cateID) {
        this.cateID = cateID;
    }

    @Override
    public String toString() {
        return "HomeStays{" + "homeStayID=" + homeStayID + ", homeStayname=" + homeStayname + ", cateID=" + cateID + '}';
    }
    
}
