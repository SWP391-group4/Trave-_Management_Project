<%-- 
    Document   : InsertSuppAddress
    Created on : Jul 6, 2022, 4:45:20 PM
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
        <h1>----------- Input SuppAddress ----------- </h1>
        <form action="SupAddressInsert" method="Post">
            <p>${alert}</p>
            <table>
                
                <tr>
                    <td><label for="accountS">AccountS</label></td>
                    <td><input type="text" id="AccountS" name="AccountS"></td>
                </tr>
                <tr>
                    <td><label for="firstName">city</label></td>
                    <td><input type="text" id="city" name="city"></td>
                </tr>
                <tr>
                    <td><label for="lastName">district</label></td>
                    <td><input type="text" id="district" name="district"></td>
                </tr>
                <tr>
                    <td><label for="fax">specific</label></td>
                    <td><input type="text" id="specific" name="specific"></td>
                </tr>
                <tr>
                    <td><label for="email">ward</label></td>
                    <td><input type="text" id="ward" name="ward" ></td>
                </tr>

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
