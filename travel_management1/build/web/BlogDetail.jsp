<%-- 
    Document   : BlogDetail
    Created on : Jul 16, 2022, 11:50:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <title>CTU Travel</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">
        <link href="star/rateit.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/cmt.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="icon" href="images/logo.png" type="">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link href="blog-overview.css" rel="stylesheet">
        <jsp:include page="Header.jsp"></jsp:include>
        </head>
        <body>

            <div class="container ct-u-paddingTop40 ct-u-paddingBottom100">
                <div class="row">
                    <div class="col-md-8 ct-content" style="margin-bottom: 20px;padding-right: 20px">
                        <div style="padding-bottom: 20px;margin-top: 30px">
                            <a href="Home">Home ></a>

                            <a href="blogController">List Blogs ></a>
                            <a href="#" style="color: #222831">Detail Blogs </a>
                        </div>
                        <div class="blog-wrapper">
                            <h3>${title}</h3>
                        <p>
                            <!--                  alt="images/blog-2.jpg"-->
                        </p>
                        <c:forEach items="${listm}" var="c">
                            <h8 style="font-size: 13px;font-family: 'Roboto',sans-serif;">Created by: ${c.firstName} ${c.lastName}</h8>
                            </c:forEach>
                        <br>                       

                        <c:forEach items="${listbd}" var="c">
                            <img style="width: 692px"  class="img-responsive pull-right blog-inner" src="images/${c.image}">
                            <br>
                            <br>
                            <p>
                                ${c.news}
                            </p>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-md-4 ct-content" style="margin-top: 220px;text-align: center" >
                    <h6 style="padding: 4px;width: 158px;margin-left: auto;margin-right: auto;font-style: italic;color: #f9be37">Lastest Blogs</h6>
                    <hr>
                    <c:forEach items="${list3b}" var="c">
                        <div class="row" style="margin-left: auto;margin-right: auto">                       
                            <a href="BlogDetail?blogId=${c.blogId}">
                                <img style="width: 100px;height: 70px"  class="img-responsive pull-right blog-inner" src="images/${c.image}"> 
                            </a>
                            <a href="BlogDetail?blogId=${c.blogId}">
                                <p style="width: 185px;text-align: left;padding-left: 8px;font-size: 13px;font-family: 'Roboto',sans-serif;color: #000">${c.title} </p>
                            </a>                       
                        </div>
                        <br>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
    <jsp:include page="Footer.jsp"></jsp:include>
</html>
