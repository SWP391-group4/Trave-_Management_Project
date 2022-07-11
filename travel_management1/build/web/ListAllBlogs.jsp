<%-- 
    Document   : ListAllBlogs
    Created on : Jul 11, 2022, 9:51:28 AM
    Author     : Admin
--%>

<%@page import="Entity.Blogs"%>
<%@page import="java.util.List"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${list}" var="a">
            <p>${a.blogId}
            </p>
        </c:forEach>
        
        
        
        
    </body>
</html>
