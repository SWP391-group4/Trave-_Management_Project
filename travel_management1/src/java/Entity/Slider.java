/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Slider {
    public String sliderID;
    public String sliderName;
    public String sliderImage;
    public String accountS;

    public Slider(String sliderID, String sliderName, String sliderImage, String accountS) {
        this.sliderID = sliderID;
        this.sliderName = sliderName;
        this.sliderImage = sliderImage;
        this.accountS = accountS;
    }

    public String getSliderID() {
        return sliderID;
    }

    public void setSliderID(String sliderID) {
        this.sliderID = sliderID;
    }

    public String getSliderName() {
        return sliderName;
    }

    public void setSliderName(String sliderName) {
        this.sliderName = sliderName;
    }

    public String getSliderImage() {
        return sliderImage;
    }

    public void setSliderImage(String sliderImage) {
        this.sliderImage = sliderImage;
    }

    public String getAccountS() {
        return accountS;
    }

    public void setAccountS(String accountS) {
        this.accountS = accountS;
    }

    @Override
    public String toString() {
        return "Slider{" + "sliderID=" + sliderID + ", sliderName=" + sliderName + ", sliderImage=" + sliderImage + ", accountS=" + accountS + '}';
    }
    
    
}
