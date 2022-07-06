<%-- 
    Document   : InsertCategories
    Created on : Jul 6, 2022, 5:20:19 PM
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
        <h1>----------- Input Categories ----------- </h1>
        <form action="CategoriesInsert" method="Post">
            <p>${alert}</p>
            <table>
                
                <tr>
                    <td><label for="accountS">CateId</label></td>
                    <td><input type="text" id="CateId" name="CateId"></td>
                </tr>
                <tr>
                    <td><label for="firstName">CateName</label></td>
                    <td><input type="text" id="CateName" name="CateName"></td>
                </tr>
                

            </table>
            <input type="submit" value="submit">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
