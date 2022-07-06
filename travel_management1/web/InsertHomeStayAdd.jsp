<%-- 
    Document   : InsertHomeStayAdd
    Created on : Jul 6, 2022, 10:23:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>----------- Input Supp ----------- </h1>
        <form action="HomeStayAddInsert" method="Post">
            <p>${alert}</p>
            <table>
                
                <tr>
                    <td><label for="accountS">HomeStayId</label></td>
                    <td><input type="text" id="HomeStayId" name="HomeStayId"></td>
                </tr>
                <tr>
                    <td><label for="firstName">City</label></td>
                    <td><input type="text" id="City" name="City"></td>
                </tr>
                <tr>
                    <td><label for="lastName">District</label></td>
                    <td><input type="text" id="District" name="District"></td>
                </tr>
                <tr>
                    <td><label for="fax">Specific</label></td>
                    <td><input type="text" id="Specific" name="Specific"></td>
                </tr>
                <tr>
                    <td><label for="email">Ward</label></td>
                    <td><input type="text" id="Ward" name="Ward" ></td>
                </tr>

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
