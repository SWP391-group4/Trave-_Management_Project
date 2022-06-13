/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author thinh
 */
public class Extensions {
    public String homeStayId;
    public String listExtentions;

    public Extensions() {
    }

    public Extensions(String homeStayId, String listExtentions) {
        this.homeStayId = homeStayId;
        this.listExtentions = listExtentions;
    }

    public String getHomeStayId() {
        return homeStayId;
    }

    public void setHomeStayId(String homeStayId) {
        this.homeStayId = homeStayId;
    }

    public String getListExtentions() {
        return listExtentions;
    }

    public void setListExtentions(String listExtentions) {
        this.listExtentions = listExtentions;
    }

    @Override
    public String toString() {
        return "Extensions{" + "homeStayId=" + homeStayId + ", listExtentions=" + listExtentions + '}';
    }
    
}
