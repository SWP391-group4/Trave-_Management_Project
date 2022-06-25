/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nam
 */
public class Categories {
    public String cateId;
    public String cateName;


    public Categories() {
    }

    public Categories(String cateId, String cateName) {
        this.cateId = cateId;
        this.cateName = cateName;
  
    }

    public String getCateId() {
        return cateId;
    }

    public void setCateId(String cateId) {
        this.cateId = cateId;
    }

    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }

   
    @Override
    public String toString() {
        return "Categories{" + "cateId=" + cateId + ", cateName=" + cateName +  '}';
    }
    
    
    
}
