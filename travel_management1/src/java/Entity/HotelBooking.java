/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class HotelBooking {
    public String roomId;
    public String customerId;
    public int roomOrderNumber;
    public String firstName;
    public String lastName;
    public String phone;
    public String orderTime;
    public String usedTime;

    public HotelBooking() {
    }

    public HotelBooking(String roomId, String customerId, int roomOrderNumber, String firstName, String lastName, String phone, String orderTime, String usedTime) {
        this.roomId = roomId;
        this.customerId = customerId;
        this.roomOrderNumber = roomOrderNumber;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.orderTime = orderTime;
        this.usedTime = usedTime;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public int getRoomOrderNumber() {
        return roomOrderNumber;
    }

    public void setRoomOrderNumber(int roomOrderNumber) {
        this.roomOrderNumber = roomOrderNumber;
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

    public String getUsedTime() {
        return usedTime;
    }

    public void setUsedTime(String usedTime) {
        this.usedTime = usedTime;
    }

    @Override
    public String toString() {
        return "HotelBooking{" + "roomId=" + roomId + ", customerId=" + customerId + ", roomOrderNumber=" + roomOrderNumber + ", firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone + ", orderTime=" + orderTime + ", usedTime=" + usedTime + '}';
    }

    
    
}
