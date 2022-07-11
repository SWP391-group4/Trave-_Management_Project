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
    public double star;
    public String feedBack;
    public String description;
    public String video;
    public int status;

    public String getAccountS() {
        return accountS;
    }

    public HomeStays(String homeStayID, String cateID, int status) {
        this.homeStayID = homeStayID;
        this.cateID = cateID;
        this.status = status;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String accountS, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, double price, double IncurredCost, String description, String video, String checkIn, String checkOut, int status) {
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
        this.description = description;
        this.video = video;
        this.status = status;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String accountS, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, double price, double IncurredCost, String description, String video, int status, double star) {
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
        this.star = star;
        this.description = description;
        this.video = video;
        this.status = status;

    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String accountS, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, double price, double IncurredCost, String description, String video) {
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

        this.description = description;
        this.video = video;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String accountS, int status) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.accountS = accountS;
        this.status = status;
    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, int status) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.status = status;
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

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward, String cateName, Double price, int status) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
        this.price = price;
        this.status = status;

    }

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward, String cateName, Double price, int status, double star) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateID = cateID;
        this.city = city;
        this.district = district;
        this.specific = specific;
        this.ward = ward;
        this.cateName = cateName;
        this.price = price;
        this.status = status;
        this.star = star;

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

    public HomeStays(String homeStayID, String homeStayname, String cateID, String city, String district, String specific, String ward, String cateName, int bedQty, int bedRoomQty, int bathRoomQty, int livingRoomQty, int kitchenQty, String checkIn, String checkOut, double price, double IncurredCost, double star, String feedBack) {
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
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

    public double getStar() {
        return star;
    }

    public void setStar(double star) {
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
        return "HomeStays{" + "homeStayID=" + homeStayID + ", homeStayname=" + homeStayname + ", cateID=" + cateID + ", city=" + city + ", district=" + district + ", specific=" + specific + ", ward=" + ward + ", cateName=" + cateName + ", price=" + price + ", star=" + star + ", status=" + status + '}';
    }

}
