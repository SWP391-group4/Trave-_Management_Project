<%-- 
    Document   : InsertSuppIMG
    Created on : Jul 6, 2022, 4:59:54 PM
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
        <h1>----------- Input SuppIMG ----------- </h1>
        <form action="SupplierImgInsert" method="Post">
            <p>${alert}</p>
            <table>
                
                <tr>
                    <td><label for="accountS">accountS</label></td>
                    <td><input type="text" id="accountS" name="accountS"></td>
                </tr>
                <tr>
                    <td><label for="lastName">img_ID_front</label></td>
                    <td><input type="text" id="img_ID_front" name="img_ID_front"></td>
                </tr>
                <tr>
                    <td><label for="fax">img_ID_back</label></td>
                    <td><input type="text" id="img_ID_back" name="img_ID_back"></td>
                </tr>
                <tr>
                    <td><label for="email">img_Avatar</label></td>
                    <td><input type="text" id="img_Avatar" name="img_Avatar" ></td>
                </tr>

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
