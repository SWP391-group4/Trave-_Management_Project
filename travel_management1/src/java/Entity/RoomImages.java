/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class RoomImages {
    public String imageId;
    public String roomId;

    public RoomImages() {
    }

    public RoomImages(String imageId, String roomId) {
        this.imageId = imageId;
        this.roomId = roomId;
    }

    public String getImageId() {
        return imageId;
    }

    public void setImageId(String imageId) {
        this.imageId = imageId;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    @Override
    public String toString() {
        return "RoomImages{" + "imageId=" + imageId + ", roomId=" + roomId + '}';
    }

  
    
}
