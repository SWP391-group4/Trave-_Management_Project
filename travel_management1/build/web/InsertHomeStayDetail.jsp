<%-- 
    Document   : InsertHomeStayDetail
    Created on : Jul 6, 2022, 11:08:50 PM
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
        <h1>----------- Input HomeStay Details ----------- </h1>
        <form action="HomeStayDetailInsert" method="Post">
            <p>${alert}</p>
            <table>
                
                <tr>
                    <td><label for="accountS">HomeStayId</label></td>
                    <td><input type="text" id="HomeStayId" name="HomeStayId"></td>
                </tr>
                <tr>
                    <td><label for="firstName">BedRoomQty</label></td>
                    <td><input type="number" id="BedRoomQty" name="BedRoomQty"></td>
                </tr>
                <tr>
                    <td><label for="lastName">BathRoomQty</label></td>
                    <td><input type="number" id="BathRoomQty" name="BathRoomQty"></td>
                </tr>
                <tr>
                    <td><label for="fax">LivingRoomQty</label></td>
                    <td><input type="number" id="LivingRoomQty" name="LivingRoomQty"></td>
                </tr>
                <tr>
                    <td><label for="email">KitchenQty</label></td>
                    <td><input type="number" id="KitchenQty" name="KitchenQty" ></td>
                </tr>
                <tr>
                    <td><label for="phone">BedQty</label></td>
                    <td><input type="number" id="BedQty" name="BedQty" ></td>
                </tr>
                <tr>
                    <td><label for="phone">CheckIn</label></td>
                    <td><input type="time" id="CheckIn" name="CheckIn" ></td>
                </tr>
                <tr>
                    <td><label for="phone">CheckOut</label></td>
                    <td><input type="time" id="CheckOut" name="CheckOut" ></td>
                </tr>
                <tr>
                    <td><label for="phone">Price</label></td>
                    <td><input type="number" id="Price" name="Price" ></td>
                </tr>
                <tr>
                    <td><label for="phone">IncurredCost</label></td>
                    <td><input type="number" id="IncurredCost" name="IncurredCost" ></td>
                </tr>
                <tr>
                    <td><label for="phone">Description</label></td>
                    <td><input type="text" id="Description" name="Description" ></td>
                </tr>
                <tr>
                    <td><label for="phone">Video</label></td>
                    <td><input type="text" id="Video" name="Video" ></td>
                </tr>

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
