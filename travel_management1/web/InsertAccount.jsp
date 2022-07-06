<%-- 
    Document   : InsertAccount
    Created on : Jul 6, 2022, 3:14:37 PM
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
        <h1>----------- Input Account ----------- </h1>
        <form action="AccountInsert" method="Post">
            <p>${alert}</p>
            <table>
                <tr>
                    <td><label for="account">account</label></td>
                    <td><input type="text" id="account" name="account"></td>
                </tr>
                <tr>
                    <td><label for="password">password</label></td>
                    <td><input type="text" id="password" name="password"></td>
                </tr>

                <tr>
                    <td><label for="accountS">typeid</label></td>
                    <td><input type="text" id="type" name="type"></td>
                </tr>
                 

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
