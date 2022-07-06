<%-- 
    Document   : InsertHomeStay
    Created on : Jul 6, 2022, 10:13:05 PM
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
        <h1>----------- Input HomeStay ----------- </h1>
        <form action="HomeStayInsert" method="Post">
            <p>${alert}</p>
            <table>
                
                <tr>
                    <td><label for="accountS">HomeStayId</label></td>
                    <td><input type="text" id="HomeStayId" name="HomeStayId"></td>
                </tr>
                <tr>
                    <td><label for="firstName">HomeStayName</label></td>
                    <td><input type="text" id="HomeStayName" name="HomeStayName"></td>
                </tr>
                <tr>
                    <td><label for="lastName">CateId</label></td>
                    <td><input type="text" id="CateId" name="CateId"></td>
                </tr>
                <tr>
                    <td><label for="fax">AccountS</label></td>
                    <td><input type="text" id="AccountS" name="AccountS"></td>
                </tr>

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
