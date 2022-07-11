/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Vouchers {

    public String voucherId;
    public String title;
    public String description;
    public String image;
    public int discount;
    public int quantity;
    public String accountM;

    public Vouchers(String title, String description, String image, int discount, int quantity, String accountM) {
        this.title = title;
        this.description = description;
        this.image = image;
        this.discount = discount;
        this.quantity = quantity;
        this.accountM = accountM;
    }

    public Vouchers(String voucherId, String title, String description, String image, int discount, int quantity, String accountM) {
        this.voucherId = voucherId;
        this.title = title;
        this.description = description;
        this.image = image;
        this.discount = discount;
        this.quantity = quantity;
        this.accountM = accountM;
    }

    public Vouchers() {
    }

    public String getVoucherId() {
        return voucherId;
    }

    public void setVoucherId(String voucherId) {
        this.voucherId = voucherId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getAccountM() {
        return accountM;
    }

    public void setAccountM(String accountM) {
        this.accountM = accountM;
    }

    @Override
    public String toString() {
        return "Vouchers{" + "voucherId=" + voucherId + ", title=" + title + ", description=" + description + ", image=" + image + ", discount=" + discount + ", quantity=" + quantity + ", accountM=" + accountM + '}';
    }
    
}
