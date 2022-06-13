/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Rules {
    public String homeStayId;
    public String listRules;

    public Rules() {
    }

    public Rules(String homeStayId, String listRules) {
        this.homeStayId = homeStayId;
        this.listRules = listRules;
    }

    public String getHomeStayId() {
        return homeStayId;
    }

    public void setHomeStayId(String homeStayId) {
        this.homeStayId = homeStayId;
    }

    public String getListRules() {
        return listRules;
    }

    public void setListRules(String listRules) {
        this.listRules = listRules;
    }

    @Override
    public String toString() {
        return "Rules{" + "homeStayId=" + homeStayId + ", listRules=" + listRules + '}';
    }
    
    
}
