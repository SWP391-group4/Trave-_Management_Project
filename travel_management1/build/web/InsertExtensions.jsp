<%-- 
    Document   : InsertExtensions
    Created on : Jul 6, 2022, 11:50:18 PM
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
        <h1>----------- Input Extensions ----------- </h1>
        <form action="ExtensionsInsert" method="Post">
            <p>${alert}</p>
            <table>
                
                <tr>
                    <td><label for="accountS">HomeStayId</label></td>
                    <td><input type="text" id="HomeStayId" name="HomeStayId"></td>
                </tr>
                <tr>
                    <td><label for="firstName">ListExtensions</label></td>
                    <td><input type="text" id="ListExtensions" name="ListExtensions"></td>
                </tr>

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
