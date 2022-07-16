/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class BlogDetails {
    public String blogDetailId;
    public String image;
    public String news;
    public String blogId;
    public String title;

    public BlogDetails() {
    }

    public BlogDetails(String blogDetailId, String image, String news, String blogId, String title) {
        this.blogDetailId = blogDetailId;
        this.image = image;
        this.news = news;
        this.blogId = blogId;
        this.title = title;
    }
    

    public BlogDetails(String blogDetailId, String image, String news, String blogId) {
        this.blogDetailId = blogDetailId;
        this.image = image;
        this.news = news;
        this.blogId = blogId;
    }

    public BlogDetails(String image, String news, String blogId) {
        this.image = image;
        this.news = news;
        this.blogId = blogId;
    }

    public String getBlogDetailId() {
        return blogDetailId;
    }

    public void setBlogDetailId(String blogDetailId) {
        this.blogDetailId = blogDetailId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public String getBlogId() {
        return blogId;
    }

    public void setBlogId(String blogId) {
        this.blogId = blogId;
    }

    @Override
    public String toString() {
        return "BlogDetails{" + "blogDetailId=" + blogDetailId + ", image=" + image + ", news=" + news + ", blogId=" + blogId + ", title=" + title + '}';
    }

    

     
}
