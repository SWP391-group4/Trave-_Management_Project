/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author phams
 */
public class SupplierHomestays {
    String accountS;
    String firstName;
    String lastName;
    String fax;
    String email;
    String phone;
    String homestayId;
    String homestayName;
    String cateId;

    public SupplierHomestays() {
    }

    public SupplierHomestays(String accountS, String firstName, String lastName, String fax, String email, String phone, String homestayId, String homestayName, String cateId) {
        this.accountS = accountS;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fax = fax;
        this.email = email;
        this.phone = phone;
        this.homestayId = homestayId;
        this.homestayName = homestayName;
        this.cateId = cateId;
    }

    public SupplierHomestays(String accountS, String firstName, String lastName, String email, String homestayName) {
        this.accountS = accountS;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.homestayName = homestayName;
    }

    public String getAccountS() {
        return accountS;
    }

    public void setAccountS(String accountS) {
        this.accountS = accountS;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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

    public String getHomestayId() {
        return homestayId;
    }

    public void setHomestayId(String homestayId) {
        this.homestayId = homestayId;
    }

    public String getHomestayName() {
        return homestayName;
    }

    public void sethomestayName(String homestayName) {
        this.homestayName = homestayName;
    }

    public String getCateId() {
        return cateId;
    }

    public void setCateId(String cateId) {
        this.cateId = cateId;
    }

    @Override
    public String toString() {
        return "SupplierHomestays{" + "firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", homestayName=" + homestayName + '}';
    }
    
    
}
