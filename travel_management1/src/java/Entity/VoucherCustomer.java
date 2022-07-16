/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class VoucherCustomer {
    public String voucherId;
    public String title;
    public String image;
    public int discount;
    public String accountC;

    public VoucherCustomer(String voucherId, String title, String image, int discount, String accountM) {
        this.voucherId = voucherId;
        this.title = title;
        this.image = image;
        this.discount = discount;
        this.accountC = accountM;
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

    public String getAccountC() {
        return accountC;
    }

    public void setAccountM(String accountC) {
        this.accountC = accountC;
    }

    @Override
    public String toString() {
        return "VoucherCustomer{" + "voucherId=" + voucherId + ", title=" + title + ", image=" + image + ", discount=" + discount + ", accountM=" + accountC + '}';
    }
    
}
