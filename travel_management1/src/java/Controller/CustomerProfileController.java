/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.*;
import Entity.CustomerAddresses;
import Entity.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author phams
 */
@WebServlet(name = "CustomerProfileController", urlPatterns = {"/CustomerProfile"})
public class CustomerProfileController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        HttpSession session = request.getSession();
        DAOBooking daoBook = new DAOBooking();
        DAOSupplier daoSup = new DAOSupplier();

        DAOBookingHistories daoHis = new DAOBookingHistories();
        Customers cus = (Customers) session.getAttribute("customer");
        String accountC = cus.getAccountC();

        //--------Booking-----------
        List<Booking> listBooking = daoBook.getBooking(accountC);
        List<HomeStays> listHomestay = daoBook.getHomestay(listBooking);

        //--------History-----------
        List<BookingHistories> listHistory = daoHis.getBooking(accountC);
        List<HomeStays> listHomestayHistory = daoHis.getHomestay(listHistory);
        List<Suppliers> listSup = daoSup.getHomeStayByAccountS(listHomestayHistory);

        request.setAttribute("size", listBooking.size());
        request.setAttribute("listBooking", listBooking);
        request.setAttribute("listHomestay", listHomestay);
        request.setAttribute("listSup", listSup);
        request.setAttribute("listHistory", listHistory);
        request.setAttribute("listHomestayHistory", listHomestayHistory);

        System.out.println(listBooking);
        System.out.println(listHomestay);
        CustomerAddresses cusAddress = (CustomerAddresses) session.getAttribute("customerAddress");

        request.setAttribute("cus", cus);
        request.setAttribute("cusAddress", cusAddress);
        request.getRequestDispatcher("CustomerProfile.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        DAOCustomers daoCus = new DAOCustomers();
        DAOBooking daoBook = new DAOBooking();
        DAOSupplier daoSup = new DAOSupplier();

        DAOBookingHistories daoHis = new DAOBookingHistories();
        Customers cus = (Customers) session.getAttribute("customer");
        CustomerAddresses cusAddress = (CustomerAddresses) session.getAttribute("customerAddress");
        String accountC = cus.getAccountC();
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String email = cus.getEmail();
        String phone = cus.getPhone();
        int status = cus.getStatus();

        Customers cus_temp = new Customers(accountC, firstName, lastName, email, phone, status);
        String specific = request.getParameter("specific");
        String ward = request.getParameter("ward");
        String district = request.getParameter("district");
        String city = request.getParameter("city");
//--------Booking-----------

        List<Booking> listBooking = daoBook.getBooking(accountC);
        List<HomeStays> listHomestay = daoBook.getHomestay(listBooking);

        //--------History-----------
        List<BookingHistories> listHistory = daoHis.getBooking(accountC);
        List<HomeStays> listHomestayHistory = daoHis.getHomestay(listHistory);
        List<Suppliers> listSup = daoSup.getHomeStayByAccountS(listHomestayHistory);

        request.setAttribute("size", listBooking.size());
        request.setAttribute("listBooking", listBooking);
        request.setAttribute("listHomestay", listHomestay);
        request.setAttribute("listSup", listSup);
        request.setAttribute("listHistory", listHistory);
        request.setAttribute("listHomestayHistory", listHomestayHistory);

        CustomerAddresses address_temp = new CustomerAddresses(accountC, city, district, specific, ward);

        int n = daoCus.updateCustomer(cus_temp);
        int m = daoCus.updateCustomerAddress(address_temp);
        if (n == 0 && m == 0) {
            String noti = "Update fails";
            request.setAttribute("cus", cus);
            request.setAttribute("cusAddress", cusAddress);
            request.setAttribute("noti", noti);
            request.getRequestDispatcher("CustomerProfile.jsp").forward(request, response);
        } else {
            String noti = "Update done.";
            request.setAttribute("cus", cus_temp);
            request.setAttribute("cusAddress", address_temp);
            request.setAttribute("noti", noti);
            request.getRequestDispatcher("CustomerProfile.jsp").forward(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
