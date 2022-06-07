/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Tickets {
    public String ticketId;
    public String seatClass;
    public int seatNumber;
    public double tax;
    public double price;
    public int status;
    public String flightId;

    public Tickets() {
    }

    public Tickets(String ticketId, String seatClass, int seatNumber, double tax, double price, int status, String flightId) {
        this.ticketId = ticketId;
        this.seatClass = seatClass;
        this.seatNumber = seatNumber;
        this.tax = tax;
        this.price = price;
        this.status = status;
        this.flightId = flightId;
    }

    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId;
    }

    public String getSeatClass() {
        return seatClass;
    }

    public void setSeatClass(String seatClass) {
        this.seatClass = seatClass;
    }

    public int getSeatNumber() {
        return seatNumber;
    }

    public void setSeatNumber(int seatNumber) {
        this.seatNumber = seatNumber;
    }

    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getFlightId() {
        return flightId;
    }

    public void setFlightId(String flightId) {
        this.flightId = flightId;
    }

    @Override
    public String toString() {
        return "Tickets{" + "ticketId=" + ticketId + ", seatClass=" + seatClass + ", seatNumber=" + seatNumber + ", tax=" + tax + ", price=" + price + ", status=" + status + ", flightId=" + flightId + '}';
    }

    
    
}
