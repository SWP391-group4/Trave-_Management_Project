/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Suppliers {
    public String SsupplierId;
    public String companyName;
    public String contactName;
    public String fax;
    public String email;
    public String phone;
    public String serviceId;

    public Suppliers() {
    }

    public Suppliers(String SsupplierId, String companyName, String contactName, String fax, String email, String phone, String serviceId) {
        this.SsupplierId = SsupplierId;
        this.companyName = companyName;
        this.contactName = contactName;
        this.fax = fax;
        this.email = email;
        this.phone = phone;
        this.serviceId = serviceId;
    }

    public String getSsupplierId() {
        return SsupplierId;
    }

    public void setSsupplierId(String SsupplierId) {
        this.SsupplierId = SsupplierId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getServiceId() {
        return serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    @Override
    public String toString() {
        return "Suppliers{" + "SsupplierId=" + SsupplierId + ", companyName=" + companyName + ", contactName=" + contactName + ", fax=" + fax + ", email=" + email + ", phone=" + phone + ", serviceId=" + serviceId + '}';
    }


    
}
