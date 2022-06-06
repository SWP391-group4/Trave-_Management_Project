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
    public String tableId;

    public Images() {
    }

    public Images(String imageId, String tableId) {
        this.imageId = imageId;
        this.tableId = tableId;
    }

    public String getImageId() {
        return imageId;
    }

    public void setImageId(String imageId) {
        this.imageId = imageId;
    }

    public String getTableId() {
        return tableId;
    }

    public void setTableId(String tableId) {
        this.tableId = tableId;
    }

    @Override
    public String toString() {
        return "Images{" + "imageId=" + imageId + ", tableId=" + tableId + '}';
    }

    
}
