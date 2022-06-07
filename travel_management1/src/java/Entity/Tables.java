/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Tables {
    public String tableId;
    public String restaurantId;
    public double price;
    public int status;
    public int tableSize;

    public Tables() {
    }

    public Tables(String tableId, String restaurantId, double price, int status, int tableSize) {
        this.tableId = tableId;
        this.restaurantId = restaurantId;
        this.price = price;
        this.status = status;
        this.tableSize = tableSize;
    }

    public String getTableId() {
        return tableId;
    }

    public void setTableId(String tableId) {
        this.tableId = tableId;
    }

    public String getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(String restaurantId) {
        this.restaurantId = restaurantId;
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

    public int getTableSize() {
        return tableSize;
    }

    public void setTableSize(int tableSize) {
        this.tableSize = tableSize;
    }

    @Override
    public String toString() {
        return "Tables{" + "tableId=" + tableId + ", restaurantId=" + restaurantId + ", price=" + price + ", status=" + status + ", tableSize=" + tableSize + '}';
    }

    
}
