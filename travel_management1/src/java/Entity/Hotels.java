/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Hotels {

    public String hotelID;
    public String hotelName;
    public String addressId;
    public String ServiceId;
    public String image;
  public String city;
    public String district;
    public String specific;
    public String ward;

    public String getHotelID() {
        return hotelID;
    }

    public void setHotelID(String hotelID) {
        this.hotelID = hotelID;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId;
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

    public Hotels(String hotelID, String hotelName,  String ServiceId, String image,String addressId, String city, String district, String specific, String ward) {
        this.hotelID = hotelID;
        this.hotelName = hotelName;
       
        this.ServiceId = ServiceId;
        this.image = image;
         this.addressId = addressId;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
    }

  public Hotels(String hotelID, String hotelName,  String ServiceId, String image, String city, String district, String specific, String ward) {
        this.hotelID = hotelID;
        this.hotelName = hotelName;
       
        this.ServiceId = ServiceId;
        this.image = image;
      
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
    }

 

    public String getcity() {
        return city;
    }

    public void setcity(String city) {
        this.city = city;
    }

 

    public Hotels(String city, String district, String specific, String ward) {
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
    }

    public Hotels(String hotelID, String hotelName) {
        this.hotelID = hotelID;
        this.hotelName = hotelName;
    }

    public Hotels() {
    }

    public String gethotelID() {
        return hotelID;
    }

    public void sethotelID(String hotelID) {
        this.hotelID = hotelID;
    }

    public String gethotelName() {
        return hotelName;
    }

    public void sethotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public String getaddressId() {
        return addressId;
    }

    public void setaddressId(String addressId) {
        this.addressId = addressId;
    }

    public String getServiceId() {
        return ServiceId;
    }

    public void setServiceId(String ServiceId) {
        this.ServiceId = ServiceId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Hotels{" + "hotelID=" + hotelID + ", hotelName=" + hotelName + ", addressId=" + addressId + ", ServiceId=" + ServiceId + ", image=" + image + ", city=" + city + ", district=" + district + ", specific=" + specific + ", ward=" + ward + '}';
    }



}
