/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Booking {
    public String accountC;
    public String homeStayId;
    public int orderNumber;
    public String firstName;
    public String lastName;
    public String phone;
    public String orderTime;
    public int bookingTime;
    public int visitorNumber;
    public String price;
    public String email;

    public Booking() {
    }

    public Booking(String accountC, String homeStayId, int orderNumber, String firstName, String lastName, String phone, String orderTime, int bookingTime, int visitorNumber, String price, String email) {
        this.accountC = accountC;
        this.homeStayId = homeStayId;
        this.orderNumber = orderNumber;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.orderTime = orderTime;
        this.bookingTime = bookingTime;
        this.visitorNumber = visitorNumber;
        this.price = price;
        this.email = email;
    }

    public String getAccountC() {
        return accountC;
    }

    public void setAccountC(String accountC) {
        this.accountC = accountC;
    }

    public String getHomeStayId() {
        return homeStayId;
    }

    public void setHomeStayId(String homeStayId) {
        this.homeStayId = homeStayId;
    }

    public int getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(int orderNumber) {
        this.orderNumber = orderNumber;
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

    public int getVisitorNumber() {
        return visitorNumber;
    }

    public void setVisitorNumber(int visitorNumber) {
        this.visitorNumber = visitorNumber;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Booking{" + "accountC=" + accountC + ", homeStayId=" + homeStayId + ", orderNumber=" + orderNumber + ", firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone + ", orderTime=" + orderTime + ", bookingTime=" + bookingTime + ", visitorNumber=" + visitorNumber + ", price=" + price + ", email=" + email + '}';
    }
    
}
