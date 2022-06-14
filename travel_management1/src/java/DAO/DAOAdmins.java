/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

/**
 *
 * @author phams
 */
public class DAOAdmins {
    public String AdminProfile (String acc){
        String sql="select '"+acc+"'";
        return sql;
    }
    public static void main(String[] args) {
        DAOAdmins d=new DAOAdmins();
        System.out.println(d.AdminProfile("m"));
    }
}
