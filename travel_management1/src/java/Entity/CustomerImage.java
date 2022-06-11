/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class CustomerImage {
    public String accountC;
    public String img_Avatar;

    public CustomerImage() {
    }

    public CustomerImage(String img_Avatar) {
        this.img_Avatar = img_Avatar;
    }

    public CustomerImage(String accountC, String img_Avatar) {
        this.accountC = accountC;
        this.img_Avatar = img_Avatar;
    }

    public String getAccountC() {
        return accountC;
    }

    public void setAccountC(String accountC) {
        this.accountC = accountC;
    }

    public String getImg_Avatar() {
        return img_Avatar;
    }

    public void setImg_Avatar(String img_Avatar) {
        this.img_Avatar = img_Avatar;
    }

    @Override
    public String toString() {
        return "CustomerImage{" + "accountC=" + accountC + ", img_Avatar=" + img_Avatar + '}';
    }
    
}
