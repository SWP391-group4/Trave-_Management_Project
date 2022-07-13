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
    public String accountS;
    public String firstName;
    public String lastName;
    public String fax;
    public String email;
    public String phone;
    public int status;
    public String homeStayID;
    public String homeStayname;
    public String cateName;

    public Suppliers() {
    }

    public Suppliers(String homeStayID, String homeStayname, String cateName) {
        this.homeStayID = homeStayID;
        this.homeStayname = homeStayname;
        this.cateName = cateName;
    }

    public Suppliers(String accountS, String firstName, String lastName, String fax, String phone) {
        this.accountS = accountS;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fax = fax;
        this.phone = phone;
    }

    public Suppliers(String accountS, String firstName, String lastName, String fax, String email, String phone) {
        this.accountS = accountS;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fax = fax;
        this.email = email;
        this.phone = phone;
    }

    public String getHomeStayID() {
        return homeStayID;
    }

    public void setHomeStayID(String homeStayID) {
        this.homeStayID = homeStayID;
    }

    public String getHomeStayname() {
        return homeStayname;
    }

    public void setHomeStayname(String homeStayname) {
        this.homeStayname = homeStayname;
    }

    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }

    public Suppliers(String accountS, String firstName, String lastName, String fax, String email, String phone,int status) {
        this.accountS = accountS;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fax = fax;
        this.email = email;
        this.phone = phone;
        this.status =status;
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
//tungcomment

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Suppliers{" + "accountS=" + accountS + ", firstName=" + firstName + ", lastName=" + lastName + ", fax=" + fax + ", email=" + email + ", phone=" + phone + ", status=" + status + '}';
    }

    
    
 

    


    
}
