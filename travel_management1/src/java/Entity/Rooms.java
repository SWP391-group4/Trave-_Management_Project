/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Rooms {
    public String roomId;
    public int roomNumber;
    public String hotelId;
    public double price;
    public String status;
    public String feedback;

    public Rooms() {
    }

    public Rooms(String roomId, int roomNumber, String hotelId, double price, String status, String feedback) {
        this.roomId = roomId;
        this.roomNumber = roomNumber;
        this.hotelId = hotelId;
        this.price = price;
        this.status = status;
        this.feedback = feedback;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getHotelId() {
        return hotelId;
    }

    public void setHotelId(String hotelId) {
        this.hotelId = hotelId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    @Override
    public String toString() {
        return "Rooms{" + "roomId=" + roomId + ", roomNumber=" + roomNumber + ", hotelId=" + hotelId + ", price=" + price + ", status=" + status + ", feedback=" + feedback + '}';
    }
    
    
}
