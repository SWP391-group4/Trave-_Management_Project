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
    public String text;
    public String marketingId;

    public Blogs() {
    }

    public Blogs(String blogId, String image, String text, String marketingId) {
        this.blogId = blogId;
        this.image = image;
        this.text = text;
        this.marketingId = marketingId;
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getMarketingId() {
        return marketingId;
    }

    public void setMarketingId(String marketingId) {
        this.marketingId = marketingId;
    }

    @Override
    public String toString() {
        return "Blogs{" + "blogId=" + blogId + ", image=" + image + ", text=" + text + ", marketingId=" + marketingId + '}';
    }
    
    
}
