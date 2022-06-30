<%-- 
    Document   : InsertSupplier
    Created on : Jun 30, 2022, 11:48:53 PM
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
        <form action="SupplierInsert" method="Post">
            <table>
                <tr>
                    <td>
                        <label for="accountS">accountS</label>
                    </td>
                    <td>
                        <input type="text" id="accountS" name="accountS">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="firstName">firstName</label>
                    </td>
                    <td>
                        <input type="text" id="firstName" name="firstName">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="lastName">lastName</label>
                    </td>
                    <td>
                        <input type="text" id="lastName" name="lastName">
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label for="fax">fax</label>
                    </td>
                    <td>
                        <input type="text" id="fax" name="fax">
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label for="email">email</label>
                    </td>
                    <td>
                        <input type="text" id="email" name="email" >
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="phone">phone</label>
                    </td>
                    <td>
                        <input type="text" id="phone" name="phone" maxlength="10">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
