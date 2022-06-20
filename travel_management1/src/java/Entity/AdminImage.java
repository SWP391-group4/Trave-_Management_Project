/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class AdminImage {
    public String accountA;
    public String img_Avatar;

    public AdminImage() {
    }

    public AdminImage(String accountA, String img_Avatar) {
        this.accountA = accountA;
        this.img_Avatar = img_Avatar;
    }

    public String getAccountA() {
        return accountA;
    }

    public void setAccountA(String accountA) {
        this.accountA = accountA;
    }

    public String getImg_Avatar() {
        return img_Avatar;
    }

    public void setImg_Avatar(String img_Avatar) {
        this.img_Avatar = img_Avatar;
    }

    @Override
    public String toString() {
        return "AdminImage{" + "accountA=" + accountA + ", img_Avatar=" + img_Avatar + '}';
    }
    
}
