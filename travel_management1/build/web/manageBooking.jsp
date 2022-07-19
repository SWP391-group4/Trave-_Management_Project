<!DOCTYPE html>
<html lang="en">
    <head>
 

        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
       


        <!--
            Product Admin CSS Template
            
        -->
    </head>

  
                                <table class="table table-hover tm-table-small tm-product-table">

                                    <thead>
                                        <tr>

                                            <th scope="col">Account</th>
                                            <th scope="col">FirstName</th>
                                            <th scope="col">Lastname</th>
                                            <th scope="col">VisitorNumber</th>
                                            <th scope="col">BookingTime</th>
                                            <th scope="col">OrderTime</th>
                                            <th scope="col">Phone</th>
                                            <th scope="col">Mail</th>



                                        </tr>
                                    </thead>
                                    <c:forEach items="${listhomeStayID}" var="o">
                                        <tbody>

                                            <tr>

                                                <td>${o.accountC}</td>
                                                <td>${o.firstName}</td><!-- comment -->
                                                <td>${o.lastName}</td>
                                                <td>${o.visitorNumber}</td>
                                                <td>${o.bookingTime}</td>
                                                <td>${o.orderTime}</td>
                                                <td>${o.phone}</td>
                                                <td>${o.email}</td> 



                                            </tr>

                                        </tbody>


                                    </c:forEach>

                                </table>
                            </form>
                        </div>
                        <!-- table container -->


                    </div>
                    <h2>Last Booking</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">NAME</th>
                                <th scope="col">VisitorNumber</th>
                                <th scope="col">BookingTime</th>
                                <th scope="col">OrderTime</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Mail</th>
                                <th  scope="col">Status</th>

                            </tr>
                        </thead>
                        <c:forEach items="${list}" var="o">
                            <tbody>
                                <tr>

                                    <td>${o.accountC}</td>
                                    <td>${o.visitorNumber}</td>
                                    <td>${o.bookingTime}</td>
                                    <td>${o.orderTime}</td>
                                    <td>${o.phone}</td>
                                    <td>${o.email}</td> 



                                </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>

            </div>
            <a href="<%=request.getContextPath()%>/manageBookingexport?type=excel">Export Excel</a>
        </div>
       
    
       
     
    </body>
</html>