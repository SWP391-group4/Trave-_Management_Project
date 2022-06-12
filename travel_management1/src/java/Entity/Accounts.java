/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Accounts {
    public String account;
    public String password;
    public int type;

    public Accounts() {
    }

    public Accounts(String account, String password, int type) {
        this.account = account;
        this.password = password;
        this.type = type;
    }

    public Accounts(String account, String password) {
        this.account = account;
        this.password = password;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    
    @Override
    public String toString() {
        return "Accounts{" + "account=" + account + ", password=" + password + ", type=" + type + '}';
    }
    
    
      
    
}