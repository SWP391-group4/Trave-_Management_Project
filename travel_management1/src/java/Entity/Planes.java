/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Planes {
    public String planeId ;
    public String planeName ;
    public String planeCate ;
    public String planeBrand ;
    public int planeRole ;
    public String serviceId ;
    public String airportId ;

    public Planes() {
    }

    public Planes(String planeId, String planeName, String planeCate, String planeBrand, int planeRole, String serviceId, String airportId) {
        this.planeId = planeId;
        this.planeName = planeName;
        this.planeCate = planeCate;
        this.planeBrand = planeBrand;
        this.planeRole = planeRole;
        this.serviceId = serviceId;
        this.airportId = airportId;
    }

    public String getPlaneId() {
        return planeId;
    }

    public void setPlaneId(String planeId) {
        this.planeId = planeId;
    }

    public String getPlaneName() {
        return planeName;
    }

    public void setPlaneName(String planeName) {
        this.planeName = planeName;
    }

    public String getPlaneCate() {
        return planeCate;
    }

    public void setPlaneCate(String planeCate) {
        this.planeCate = planeCate;
    }

    public String getPlaneBrand() {
        return planeBrand;
    }

    public void setPlaneBrand(String planeBrand) {
        this.planeBrand = planeBrand;
    }

    public int getPlaneRole() {
        return planeRole;
    }

    public void setPlaneRole(int planeRole) {
        this.planeRole = planeRole;
    }

    public String getServiceId() {
        return serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    public String getAirportId() {
        return airportId;
    }

    public void setAirportId(String airportId) {
        this.airportId = airportId;
    }

    @Override
    public String toString() {
        return "Planes{" + "planeId=" + planeId + ", planeName=" + planeName + ", planeCate=" + planeCate + ", planeBrand=" + planeBrand + ", planeRole=" + planeRole + ", serviceId=" + serviceId + ", airportId=" + airportId + '}';
    }
    
    
    
}
