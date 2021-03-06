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
    public String news;
    public String img2;
    public String fname;
    public String lname;
    public String email;

    public Blogs() {
    }

//    public Blogs(String blogId, String image, String title, String accountM) {
//        this.blogId = blogId;
//        this.image = image;
//        this.title = title;
//        this.accountM = accountM;
//    }
    public Blogs(String blogId, String image, String title) {
        this.blogId = blogId;
        this.image = image;
        this.title = title;
    }

    public Blogs(String blogId, String image, String title, String img2, String news, String accountM) {
        this.blogId = blogId;
        this.image = image;
        this.title = title;
        this.accountM = accountM;
        this.news = news;
        this.img2 = img2;
    }

    public Blogs(String blogId, String image, String title, String accountM, String fname, String lname, String email) {
        this.blogId = blogId;
        this.image = image;
        this.title = title;
        this.accountM = accountM;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
    }

    public Blogs(String blogId, String image, String title, String news, String accountM) {
        this.blogId = blogId;
        this.image = image;
        this.title = title;
        this.news = news;
        this.accountM = accountM;
    }

    public Blogs(String blogId, String image, String title, String accountM) {
        this.blogId = blogId;
        this.image = image;
        this.title = title;
        this.accountM = accountM;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public String getAccountM() {
        return accountM;
    }

    public void setAccountM(String accountM) {
        this.accountM = accountM;
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

    @Override
    public String toString() {
        return "Blogs{" + "blogId=" + blogId + ", image=" + image + ", title=" + title + ", accountM=" + accountM + ", news=" + news + ", img2=" + img2 + ", fname=" + fname + ", lname=" + lname + ", email=" + email + '}';
    }

}
