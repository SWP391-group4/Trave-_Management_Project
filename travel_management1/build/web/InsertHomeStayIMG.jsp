<%-- 
    Document   : InsertHomeStayIMG
    Created on : Jul 6, 2022, 10:35:25 PM
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
        <h1>----------- Input HomeStayIMG ----------- </h1>
        <form action="ImagesInsert" method="Post">
            <p>${alert}</p>
            <table>
                
                <tr>
                    <td><label for="accountS">ImageId</label></td>
                    <td><input type="text" id="ImageId" name="ImageId"></td>
                </tr>
                <tr>
                    <td><label for="firstName">ImageUrl</label></td>
                    <td><input type="text" id="ImageUrl" name="ImageUrl"></td>
                </tr>
                <tr>
                    <td><label for="firstName">HomeStayId</label></td>
                    <td><input type="text" id="HomeStayId" name="HomeStayId"></td>
                </tr>

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
