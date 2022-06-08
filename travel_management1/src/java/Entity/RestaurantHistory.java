/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class RestaurantHistory {

    public String tableId;
    public String customerId;
    public int restaurantOrderNumber;
    public String firstName;
    public String lastName;
    public String phone;
    public double orderTime;
    public String feedback;
    public int star;

    public RestaurantHistory() {
    }

    public RestaurantHistory(String tableId, String customerId, int restaurantOrderNumber, String firstName, String lastName, String phone, double orderTime, String feedback, int star) {
        this.tableId = tableId;
        this.customerId = customerId;
        this.restaurantOrderNumber = restaurantOrderNumber;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.orderTime = orderTime;
        this.feedback = feedback;
        this.star = star;
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

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    @Override
    public String toString() {
        return "RestaurantHistory{" + "tableId=" + tableId + ", customerId=" + customerId + ", restaurantOrderNumber=" + restaurantOrderNumber + ", firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone + ", orderTime=" + orderTime + ", feedback=" + feedback + ", star=" + star + '}';
    }

    
}