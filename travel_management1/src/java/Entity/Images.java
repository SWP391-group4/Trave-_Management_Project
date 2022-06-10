/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Images {
    public String imageId;
    public String imageUrl;
    public String homeStayId;

    public Images() {
    }

    public Images(String imageUrl, String homeStayId) {
        this.imageUrl = imageUrl;
        this.homeStayId = homeStayId;
    }
     
    public Images(String imageId, String imageUrl, String homeStayId) {
        this.imageId = imageId;
        this.imageUrl = imageUrl;
        this.homeStayId = homeStayId;
    }

    public String getImageId() {
        return imageId;
    }

    public void setImageId(String imageId) {
        this.imageId = imageId;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getHomeStayId() {
        return homeStayId;
    }

    public void setHomeStayId(String homeStayId) {
        this.homeStayId = homeStayId;
    }

    @Override
    public String toString() {
        return "Images{" + "imageId=" + imageId + ", imageUrl=" + imageUrl + ", homeStayId=" + homeStayId + '}';
    }
    

   
    
}
