/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author thinh
 */
public class HomeStayDetails {
    public String homestayid;
    public int bedRoomQty;
    public int bathRoomQty;
    public int livingRoomQty;
    public int kitchenQty;
    public int bedQty;
    public String checkIn;
    public String checkOut;
    public double price;
    public double incurredCost;

    public HomeStayDetails(String homestayid, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, int bedQty, String checkIn, String checkOut, double price, double incurredCost) {
        this.homestayid = homestayid;
        this.bedRoomQty = bedRoomQty;
        this.bathRoomQty = bathRoomQty;
        this.livingRoomQty = livingRoomQty;
        this.kitchenQty = kitchenQty;
        this.bedQty = bedQty;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.price = price;
        this.incurredCost = incurredCost;
    }

    public HomeStayDetails() {
    }

    public String getHomestayid() {
        return homestayid;
    }

    public void setHomestayid(String homestayid) {
        this.homestayid = homestayid;
    }

    public int getBedRoomQty() {
        return bedRoomQty;
    }

    public void setBedRoomQty(int bedRoomQty) {
        this.bedRoomQty = bedRoomQty;
    }

    public int getBathRoomQty() {
        return bathRoomQty;
    }

    public void setBathRoomQty(int bathRoomQty) {
        this.bathRoomQty = bathRoomQty;
    }

    public int getLivingRoomQty() {
        return livingRoomQty;
    }

    public void setLivingRoomQty(int livingRoomQty) {
        this.livingRoomQty = livingRoomQty;
    }

    public int getKitchenQty() {
        return kitchenQty;
    }

    public void setKitchenQty(int kitchenQty) {
        this.kitchenQty = kitchenQty;
    }

    public int getBedQty() {
        return bedQty;
    }

    public void setBedQty(int bedQty) {
        this.bedQty = bedQty;
    }

    public String getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(String checkIn) {
        this.checkIn = checkIn;
    }

    public String getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(String checkOut) {
        this.checkOut = checkOut;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getIncurredCost() {
        return incurredCost;
    }

    public void setIncurredCost(double incurredCost) {
        this.incurredCost = incurredCost;
    }

    @Override
    public String toString() {
        return "HomeStayDetails{" + "homestayid=" + homestayid + ", bedRoomQty=" + bedRoomQty + ", bathRoomQty=" + bathRoomQty + ", livingRoomQty=" + livingRoomQty + ", kitchenQty=" + kitchenQty + ", bedQty=" + bedQty + ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", price=" + price + ", incurredCost=" + incurredCost + '}';
    }
    
}
