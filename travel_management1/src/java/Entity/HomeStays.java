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
public String city;
public String district;
public String specific;
public String ward;

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
    }

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

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getSpecific() {
        return specific;
    }

    public void setSpecific(String specific) {
        this.specific = specific;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    @Override
    public String toString() {
        return "HomeStays{" + "homeStayID=" + homeStayID + ", homeStayname=" + homeStayname + ", cateID=" + cateID + ", city=" + city + ", district=" + district + ", specific=" + specific + ", ward=" + ward + '}';
    }

   
    
}
