package Entity;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author thinh
 */
public class HomeStayAddressses {
   public String homestayid;
   public String city;
   public String district;
   public String Specific;
   public String ward;

    public HomeStayAddressses(String homestayid, String city, String district, String Specific, String ward) {
        this.homestayid = homestayid;
        this.city = city;
        this.district = district;
        this.Specific = Specific;
        this.ward = ward;
    }

    public HomeStayAddressses() {
    }

    public String getHomestayid() {
        return homestayid;
    }

    public void setHomestayid(String homestayid) {
        this.homestayid = homestayid;
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
        return Specific;
    }

    public void setSpecific(String Specific) {
        this.Specific = Specific;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    @Override
    public String toString() {
        return "HomeStayAddressses{" + "homestayid=" + homestayid + ", city=" + city + ", district=" + district + ", Specific=" + Specific + ", ward=" + ward + '}';
    }
   
}
