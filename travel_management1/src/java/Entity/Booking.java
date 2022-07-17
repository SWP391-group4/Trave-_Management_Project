/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

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
    public double price;
    public int status;
    public String email;

    public Booking() {
    }

    public Booking(String accountC, String homeStayId, int orderNumber, String firstName, String lastName, String phone, String orderTime, int bookingTime, int visitorNumber, double price, int status, String email) {
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
        this.status = status;
        this.email = email;
    }

    public Booking(String accountC, String homeStayId, int orderNumber, String firstName, String lastName, String phone, String orderTime, int bookingTime, int visitorNumber, double price, String email) {
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Calendar getDate() {
        String date_time = this.orderTime;
//        String date_time = "11/27/2020 05:35:00";
        SimpleDateFormat dateParser = new SimpleDateFormat("MM-dd-yy HH:mm:ss");
        {
            try {
                Date date = (Date) dateParser.parse(date_time);
                Calendar cal = Calendar.getInstance();
                cal.setTime(date);
                return cal;

            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public int getYear() {
        return getDate().get(Calendar.YEAR);
    }

    public String getMonth() {
        int month = getDate().get(Calendar.MONTH);
        switch (month) {
            case 1:
                return "January";
            case 2:

                return "February";
            case 3:

                return "March";
            case 4:

                return "April";
            case 5:

                return "May";
            case 6:

                return "June";
            case 7:

                return "July";
            case 8:

                return "August";
            case 9:

                return "September";
            case 10:

                return "October";
            case 11:

                return "November";

            default:
                return "December";
        }
    }

    public int getDay() {
        return getDate().get(Calendar.DAY_OF_MONTH);
    }

    public int getHour() {
        return getDate().get(Calendar.HOUR_OF_DAY);
    }

    public int getMinute() {
        return getDate().get(Calendar.MINUTE);
    }

    public int getSecond() {
        return getDate().get(Calendar.SECOND);
    }

    @Override
    public String toString() {
        return "Booking{" + "accountC=" + accountC + ", homeStayId=" + homeStayId + ", orderNumber=" + orderNumber + ", firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone + ", orderTime=" + orderTime + ", bookingTime=" + bookingTime + ", visitorNumber=" + visitorNumber + ", price=" + price + ", status=" + status + ", email=" + email + '}';
    }



}
