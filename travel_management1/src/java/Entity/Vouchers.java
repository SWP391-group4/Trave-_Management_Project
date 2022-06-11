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
    public int discount;
    public int quantity;
    public String accountC;

    public Vouchers() {
    }

    public Vouchers(String voucherId, int discount, int quantity, String accountC) {
        this.voucherId = voucherId;
        this.discount = discount;
        this.quantity = quantity;
        this.accountC = accountC;
    }

    public String getVoucherId() {
        return voucherId;
    }

    public void setVoucherId(String voucherId) {
        this.voucherId = voucherId;
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

    public String getCustomerId() {
        return accountC;
    }

    public void setCustomerId(String accountC) {
        this.accountC = accountC;
    }

    @Override
    public String toString() {
        return "Vouchers{" + "voucherId=" + voucherId + ", discount=" + discount + ", quantity=" + quantity + ", accountC=" + accountC + '}';
    }

    
    
}
