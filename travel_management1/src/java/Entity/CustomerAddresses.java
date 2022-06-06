/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class CustomerAddresses {

    public String CustomerId;
    public String City;
    public String District;
    public String Specific;
    public String Ward;

    public CustomerAddresses() {
    }

    public CustomerAddresses(String CustomerId, String City, String District, String Specific, String Ward) {
        this.CustomerId = CustomerId;
        this.City = City;
        this.District = District;
        this.Specific = Specific;
        this.Ward = Ward;
    }

    public String getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(String CustomerId) {
        this.CustomerId = CustomerId;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getDistrict() {
        return District;
    }

    public void setDistrict(String District) {
        this.District = District;
    }

    public String getSpecific() {
        return Specific;
    }

    public void setSpecific(String Specific) {
        this.Specific = Specific;
    }

    public String getWard() {
        return Ward;
    }

    public void setWard(String Ward) {
        this.Ward = Ward;
    }

    @Override
    public String toString() {
        return "CustomerAddresses{" + "CustomerId=" + CustomerId + ", City=" + City + ", District=" + District + ", Specific=" + Specific + ", Ward=" + Ward + '}';
    }

    

    
    
}
