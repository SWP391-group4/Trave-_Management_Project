/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Services {
    private String ServiceId;
    private String ServiceName;

    public Services() {
    }

    public Services(String ServiceId, String ServiceName) {
        this.ServiceId = ServiceId;
        this.ServiceName = ServiceName;
    }

    public Services(String ServiceName) {
        this.ServiceName = ServiceName;
    }

    public String getServiceId() {
        return ServiceId;
    }

    public void setServiceId(String ServiceId) {
        this.ServiceId = ServiceId;
    }

    public String getServiceName() {
        return ServiceName;
    }

    public void setServiceName(String ServiceName) {
        this.ServiceName = ServiceName;
    }

    @Override
    public String toString() {
        return "Services{" + "ServiceId=" + ServiceId + ", ServiceName=" + ServiceName + '}';
    }
    
}
