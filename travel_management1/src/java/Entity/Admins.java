/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Admins {
    public String accountA;
    public String firstName;
    public String lastName;
    public int age;
    public String email; 
    public String phone;

    public Admins() {
    }

    public Admins(String accountA, String firstName, String lastName, int age, String email, String phone) {
        this.accountA = accountA;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.email = email;
        this.phone = phone;
    }

    public String getAccountA() {
        return accountA;
    }

    public void setAccountA(String accountA) {
        this.accountA = accountA;
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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

    @Override
    public String toString() {
        return "Admins{" + "accountA=" + accountA + ", firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + ", email=" + email + ", phone=" + phone + '}';
    }

    
    
}
