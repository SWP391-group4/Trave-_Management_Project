/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Dishes {
    public String dishId;
    public String foodName;
    public double price;

    public Dishes() {
    }

    public Dishes(String dishId, String foodName, double price) {
        this.dishId = dishId;
        this.foodName = foodName;
        this.price = price;
    }

    public String getDishId() {
        return dishId;
    }

    public void setDishId(String dishId) {
        this.dishId = dishId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Dishes{" + "dishId=" + dishId + ", foodName=" + foodName + ", price=" + price + '}';
    }

    
}
