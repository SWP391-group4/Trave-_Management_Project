<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <a  href="menu.jsp"><img src="images/logo.png" style="width: 50px;height:60px;margin-left:50px "></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu">Menu</span> 
    </button>

    <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item "><a href="Home" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="ListAllHomeStayController" class="nav-link">HomeStay</a></li>
            <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="contact.html" class="nav-link">FAQs</a></li>
            <li class="nav-item dropdown no-arrow">

                <c:if test="${sessionScope.acc!=null}">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="mr-2 d-none d-lg-inline">${sessionScope.acc.account}</span>

                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                         aria-labelledby="userDropdown">
                        <c:if test="${sessionScope.acc.type==3}">
                            <a class="dropdown-item" href="suppilerProflieController">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                        </c:if>

                        <c:if test="${sessionScope.acc.type==4}">
                            <a class="dropdown-item" href="CustomerProfile">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                        </c:if>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="logout"> <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>Logout
                        </a>
                    </div>
                </c:if>
                <c:if test="${sessionScope.acc==null}">

                    <a class="nav-link " href="login"  >
                        <span class="mr-2 d-none d-lg-inline">Login</span>

                    </a>


                </c:if>
            </li>
        </ul>
    </div>
</nav>
