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
      <div class="col-md-12 ct-content">
            <div class="blog-wrapper">
               <p>
                  ${blogdetail.news}
<!--                  alt="images/blog-2.jpg"-->
               </p>
               <img  class="img-responsive pull-right blog-inner" src="images/blog-2.jpg">
               <div>
                  ${blogdetail.title}
               </div>
               <p>
                  "We are honored to have made the Inc. 5000 and see it as another validation point of our overall business strategy," says Shawn Moore, Founder and CTO of WebCorpCo. "WebCorpCo is on the move and will be making some exciting announcements in the weeks ahead - we expect 2015 and 2016 to be huge years for us as we execute on the most important initiatives in our company's history."
               </p>
               <p>
                  The 2015 Inc. 5000 is the most competitive crop in the list's history. The average company on the list achieved a mind-boggling three-year growth of 490%. The Inc. 5000's aggregate revenue is $205 billion, generating 647,000 jobs over the past three years. "The story of this year's Inc. 5000 is the story of great leadership. In an incredibly competitive business landscape, it takes something extraordinary to take your company to the top," says Inc. President and Editor-In-Chief Eric Schurenberg. "You have to remember that the average company on the Inc. 5000 grew nearly six-fold since 2012. Business owners don't achieve that kind of success by accident." Founded in 2006, WebCorpCo is an enterprise website content management software developer.
               </p>
               <p>
                  WebCorpCo CMS customers include the Florida Department of Education, MobileHelp, the Dr. Phillips Center for the Performing Arts, and the CNL family of companies. WebCorpCo has earned several major awards in the past year. The Miami Beach Information mobile app was judged to be 2014's best travel destination app by Travel Weekly and earned the Gold Magellan award, finishing ahead of the silver-award winning Hotwire.com app. More about Inc. and the Inc. 500|5000
               </p>
            </div>
         </div>
      </div>
   </div>
    </body>
            <jsp:include page="Footer.jsp"></jsp:include>
</html>
