/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author phams
 */
public class MessageAdmin {
    int messengerCAId;
    String caption;
    String description;
    int messRole;
    String accountC;

    public MessageAdmin() {
    }

    public MessageAdmin(int messengerCAId, String caption, String description, int messRole, String accountC) {
        this.messengerCAId = messengerCAId;
        this.caption = caption;
        this.description = description;
        this.messRole = messRole;
        this.accountC = accountC;
    }

    public MessageAdmin(String caption, String description, int messRole, String accountC) {
        this.caption = caption;
        this.description = description;
        this.messRole = messRole;
        this.accountC = accountC;
    }

    public int getMessengerCAId() {
        return messengerCAId;
    }

    public void setMessengerCAId(int messengerCAId) {
        this.messengerCAId = messengerCAId;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public String getDescription() {
        return description;
    }

    public int getMessRole() {
        return messRole;
    }

    public void setMessRole(int messRole) {
        this.messRole = messRole;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public String getAccountC() {
        return accountC;
    }

    public void setAccountC(String accountC) {
        this.accountC = accountC;
    }

    @Override
    public String toString() {
        return "MessageAdmin{" + "messengerCAId=" + messengerCAId + ", caption=" + caption + ", description=" + description + ", menRole=" + messRole + ", accountC=" + accountC + '}';
    }
    
}
