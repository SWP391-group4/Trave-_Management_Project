/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Restaurants {
    public String restaurantId;
    public String restaurantName;
    public String addressId;
    public String dishId;
    public String review;
    public String serviceId;

    public Restaurants() {
    }

    public Restaurants(String restaurantId, String restaurantName, String addressId, String dishId, String review, String serviceId) {
        this.restaurantId = restaurantId;
        this.restaurantName = restaurantName;
        this.addressId = addressId;
        this.dishId = dishId;
        this.review = review;
        this.serviceId = serviceId;
    }

    public String getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(String restaurantId) {
        this.restaurantId = restaurantId;
    }

    public String getRestaurantName() {
        return restaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        this.restaurantName = restaurantName;
    }

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId;
    }

    public String getDishId() {
        return dishId;
    }

    public void setDishId(String dishId) {
        this.dishId = dishId;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getServiceId() {
        return serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    @Override
    public String toString() {
        return "Restaurants{" + "restaurantId=" + restaurantId + ", restaurantName=" + restaurantName + ", addressId=" + addressId + ", dishId=" + dishId + ", review=" + review + ", serviceId=" + serviceId + '}';
    }
    
    
}
