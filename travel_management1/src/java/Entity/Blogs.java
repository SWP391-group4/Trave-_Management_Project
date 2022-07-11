/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Blogs {
    public String blogId;
    public String image;
    public String title;
    public String accountM;

    public Blogs() {
    }
    

    public Blogs(String blogId, String image, String title, String accountM) {
        this.blogId = blogId;
        this.image = image;
        this.title = title;
        this.accountM = accountM;
    }

    public Blogs(String blogId, String image, String title) {
        this.blogId = blogId;
        this.image = image;
        this.title = title;
    }

    

    public String getBlogId() {
        return blogId;
    }

    public void setBlogId(String blogId) {
        this.blogId = blogId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getaccountM() {
        return accountM;
    }

    public void setaccountM(String accountM) {
        this.accountM = accountM;
    }

    @Override
    public String toString() {
        return "Blogs{" + "blogId=" + blogId + ", image=" + image + ", title=" + title + ", accountM=" + accountM + '}';
    }

    
    
}
