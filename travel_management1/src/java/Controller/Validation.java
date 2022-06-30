/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.util.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

/**
 *
 * @author nam
 */
public class Validation {

    public boolean checkNull(String str) {
        if (str == "" || str.equals("")) {
            return false;
        } else {
            return true;
        }
    }

    public boolean checkNumber(String str) {
        try {
            Double.parseDouble(str);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
      public static void main(String[] args) throws SQLException {
           Date date = new Date();
           SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
           String strDate = formatter.format(date);
           System.out.println(strDate);
        }

}
