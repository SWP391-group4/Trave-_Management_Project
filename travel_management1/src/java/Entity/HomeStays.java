/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author thinh
 */
public class HomeStays {

    public String homeStayID;
    public String homeStayname;
    public String cateID;
    public String accountS;
    public String city;
    public String district;
    public String specific;
    public String ward;
    public String cateName;
    public int bedQty;
    public int bedRoomQty;
    public int bathRoomQty;
    public int livingRoomQty;
    public int kitchenQty;
    public String checkIn;
    public String checkOut;
    public double price;
    public double IncurredCost;
    public int star;
    public String feedBack;

    public String getAccountS() {
        return accountS;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String accountS) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.accountS = accountS;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String accountS, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, String checkIn, String checkOut, double price, double IncurredCost) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.accountS = accountS;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
        this.bedQty = bedQty;
        this.bedRoomQty = bedRoomQty;
        this.bathRoomQty = bathRoomQty;
        this.livingRoomQty = livingRoomQty;
        this.kitchenQty = kitchenQty;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.price = price;
        this.IncurredCost = IncurredCost;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, Double price) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
        this.bedQty = bedQty;
        this.bedRoomQty = bedRoomQty;
        this.bathRoomQty = bathRoomQty;
        this.livingRoomQty = livingRoomQty;
        this.kitchenQty = kitchenQty;
        this.price = price;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String accountS, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, double price, double IncurredCost) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.accountS = accountS;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
        this.bedQty = bedQty;
        this.bedRoomQty = bedRoomQty;
        this.bathRoomQty = bathRoomQty;
        this.livingRoomQty = livingRoomQty;
        this.kitchenQty = kitchenQty;
        this.price = price;
        this.IncurredCost = IncurredCost;
    }


    public String getCateName() {
        return cateName;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, String checkIn, String checkOut, double price, double IncurredCost, int star, String feedBack) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
        this.bedQty = bedQty;
        this.bedRoomQty = bedRoomQty;
        this.bathRoomQty = bathRoomQty;
        this.livingRoomQty = livingRoomQty;
        this.kitchenQty = kitchenQty;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.price = price;
        this.IncurredCost = IncurredCost;
        this.star = star;
        this.feedBack = feedBack;
    }

    public int getBedQty() {
        return bedQty;
    }

    public void setBedQty(int bedQty) {
        this.bedQty = bedQty;
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
        return IncurredCost;
    }

    public void setIncurredCost(double IncurredCost) {
        this.IncurredCost = IncurredCost;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public String getFeedBack() {
        return feedBack;
    }

    public void setFeedBack(String feedBack) {
        this.feedBack = feedBack;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward, String cateName) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
    }

    public HomeStays(String accountS, String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward, String cateName) {
        this.accountS = accountS;
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;

        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
        this.bedQty = bedQty;
        this.bedRoomQty = bedRoomQty;
        this.bathRoomQty = bathRoomQty;
        this.livingRoomQty = livingRoomQty;
        this.kitchenQty = kitchenQty;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
    }

    public HomeStays() {
    }

    public String getHomeStayID() {
        return homeStayID;
    }

    public void setHomeStayID(String homeStayID) {
        this.homeStayID = homeStayID;
    }

    public String getHomeStayname() {
        return homeStayname;
    }

    public void setHomeStayname(String homeStayname) {
        this.homeStayname = homeStayname;
    }

    public String getCateID() {
        return cateID;
    }

    public void setCateID(String cateID) {
        this.cateID = cateID;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getSpecific() {
        return specific;
    }

    public void setSpecific(String specific) {
        this.specific = specific;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    @Override
    public String toString() {
        return "HomeStays{" + "homeStayID=" + homeStayID + ", homeStayname=" + homeStayname + ", cateID=" + cateID + ", accountS=" + accountS + ", city=" + city + ", district=" + district + ", specific=" + specific + ", ward=" + ward + ", cateName=" + cateName + ", bedQty=" + bedQty + ", bedRoomQty=" + bedRoomQty + ", bathRoomQty=" + bathRoomQty + ", livingRoomQty=" + livingRoomQty + ", kitchenQty=" + kitchenQty + '}';
    }

}
