/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class RestaurantBooking {
    public String tableId;
    public String customerId;
    public int restaurantOrderNumber;
    public String firstName;
    public String lastName;
    public String phone;
    public double orderTime;

    public RestaurantBooking() {
    }

    public RestaurantBooking(String tableId, String customerId, int restaurantOrderNumber, String firstName, String lastName, String phone, double orderTime) {
        this.tableId = tableId;
        this.customerId = customerId;
        this.restaurantOrderNumber = restaurantOrderNumber;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.orderTime = orderTime;
    }

    public String getTableId() {
        return tableId;
    }

    public void setTableId(String tableId) {
        this.tableId = tableId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public int getRestaurantOrderNumber() {
        return restaurantOrderNumber;
    }

    public void setRestaurantOrderNumber(int restaurantOrderNumber) {
        this.restaurantOrderNumber = restaurantOrderNumber;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(double orderTime) {
        this.orderTime = orderTime;
    }

    @Override
    public String toString() {
        return "RestaurantBooking{" + "tableId=" + tableId + ", customerId=" + customerId + ", restaurantOrderNumber=" + restaurantOrderNumber + ", firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone + ", orderTime=" + orderTime + '}';
    }

    
    
}
