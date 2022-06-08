/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class RestaurantAddresses {
    public String restaurantId;
    public String city;
    public String district;
    public String specific;
    public String ward;

    public RestaurantAddresses() {
    }

    public RestaurantAddresses(String restaurantId, String city, String district, String specific, String ward) {
        this.restaurantId = restaurantId;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
    }

    public String getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(String restaurantId) {
        this.restaurantId = restaurantId;
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
        return "RestaurantAddresses{" + "restaurantId=" + restaurantId + ", city=" + city + ", district=" + district + ", specific=" + specific + ", ward=" + ward + '}';
    }

    
}
