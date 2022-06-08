/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class FlightBooking {
    public String ticketId;
    public String customerId;
    public int flightOrderNumber;
    public String firstName;
    public String lastName;
    public String phone;
    public double price;

    public FlightBooking() {
    }

    public FlightBooking(String ticketId, String customerId, int flightOrderNumber, String firstName, String lastName, String phone, double price) {
        this.ticketId = ticketId;
        this.customerId = customerId;
        this.flightOrderNumber = flightOrderNumber;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.price = price;
    }

    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public int getFlightOrderNumber() {
        return flightOrderNumber;
    }

    public void setFlightOrderNumber(int flightOrderNumber) {
        this.flightOrderNumber = flightOrderNumber;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "FlightBooking{" + "ticketId=" + ticketId + ", customerId=" + customerId + ", flightOrderNumber=" + flightOrderNumber + ", firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone + ", price=" + price + '}';
    }
    
    
    
}
