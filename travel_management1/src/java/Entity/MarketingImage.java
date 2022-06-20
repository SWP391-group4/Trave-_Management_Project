/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class MarketingImage {
    public String accountM;
    public String img_Avatar;

    public MarketingImage() {
    }

    public MarketingImage(String accountM, String img_Avatar) {
        this.accountM = accountM;
        this.img_Avatar = img_Avatar;
    }

    public String getAccountM() {
        return accountM;
    }

    public void setAccountM(String accountM) {
        this.accountM = accountM;
    }

    public String getImg_Avatar() {
        return img_Avatar;
    }

    public void setImg_Avatar(String img_Avatar) {
        this.img_Avatar = img_Avatar;
    }

    @Override
    public String toString() {
        return "MarketingImage{" + "accountM=" + accountM + ", img_Avatar=" + img_Avatar + '}';
    }
    
}
