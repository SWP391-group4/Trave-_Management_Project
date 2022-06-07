/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Airports {
    public String  airportId;
    public String  province;
    public String  ptreet;
    public String  city;
    public String  district;
    public String  airportName;

    public Airports() {
    }

    public Airports(String airportId, String province, String ptreet, String city, String district, String airportName) {
        this.airportId = airportId;
        this.province = province;
        this.ptreet = ptreet;
        this.city = city;
        this.district = district;
        this.airportName = airportName;
    }

    public String getAirportId() {
        return airportId;
    }

    public void setAirportId(String airportId) {
        this.airportId = airportId;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getPtreet() {
        return ptreet;
    }

    public void setPtreet(String ptreet) {
        this.ptreet = ptreet;
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

    public String getAirportName() {
        return airportName;
    }

    public void setAirportName(String airportName) {
        this.airportName = airportName;
    }

    @Override
    public String toString() {
        return "Airports{" + "airportId=" + airportId + ", province=" + province + ", ptreet=" + ptreet + ", city=" + city + ", district=" + district + ", airportName=" + airportName + '}';
    }

    
    
}
