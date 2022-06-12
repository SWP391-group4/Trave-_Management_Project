/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class SupplierImage {

    public String accountS;
    public String img_ID_front;
    public String img_ID_back;
    public String img_Avatar;

    public SupplierImage(String img_ID_front, String img_ID_back, String img_Avatar) {
        this.img_ID_front = img_ID_front;
        this.img_ID_back = img_ID_back;
        this.img_Avatar = img_Avatar;
    }

    public SupplierImage(String accountS, String img_ID_front, String img_ID_back, String img_Avatar) {
        this.accountS = accountS;
        this.img_ID_front = img_ID_front;
        this.img_ID_back = img_ID_back;
        this.img_Avatar = img_Avatar;
    }

    public SupplierImage() {
    }

    public String getAccountS() {
        return accountS;
    }

    public void setAccountS(String accountS) {
        this.accountS = accountS;
    }

    public String getImg_ID_front() {
        return img_ID_front;
    }

    public void setImg_ID_front(String img_ID_front) {
        this.img_ID_front = img_ID_front;
    }

    public String getImg_ID_back() {
        return img_ID_back;
    }

    public void setImg_ID_back(String img_ID_back) {
        this.img_ID_back = img_ID_back;
    }

    public String getImg_Avatar() {
        return img_Avatar;
    }

    public void setImg_Avatar(String img_Avatar) {
        this.img_Avatar = img_Avatar;
    }

//comment
    @Override
    public String toString() {
        return "SupplierImage{" + "accountS=" + accountS + ", img_ID_front=" + img_ID_front + ", img_ID_back=" + img_ID_back + ", img_Avatar=" + img_Avatar + '}';
    }

    
}
