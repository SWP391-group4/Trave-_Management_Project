/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author thinh
 */
public class HomeStayHistories {
    public String homeStayId;
    public String firstName;
    public String lastName;
    public String phone_cus;
    public String email_cus;
    public String orderTime;
    public int bookingTime;
    public double price;

    public HomeStayHistories(String homeStayId, String firstName, String lastName, String phone_cus, String email_cus, String orderTime, int bookingTime, double price) {
        this.homeStayId = homeStayId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone_cus = phone_cus;
        this.email_cus = email_cus;
        this.orderTime = orderTime;
        this.bookingTime = bookingTime;
        this.price = price;
    }

    public HomeStayHistories() {
    }

    public String getHomeStayId() {
        return homeStayId;
    }

    public void setHomeStayId(String homeStayId) {
        this.homeStayId = homeStayId;
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

    public String getPhone_cus() {
        return phone_cus;
    }

    public void setPhone_cus(String phone_cus) {
        this.phone_cus = phone_cus;
    }

    public String getEmail_cus() {
        return email_cus;
    }

    public void setEmail_cus(String email_cus) {
        this.email_cus = email_cus;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public int getBookingTime() {
        return bookingTime;
    }

    public void setBookingTime(int bookingTime) {
        this.bookingTime = bookingTime;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "HomeStayHistories{" + "homeStayId=" + homeStayId + ", firstName=" + firstName + ", lastName=" + lastName + ", phone_cus=" + phone_cus + ", email_cus=" + email_cus + ", orderTime=" + orderTime + ", bookingTime=" + bookingTime + ", price=" + price + '}';
    }
    
}
