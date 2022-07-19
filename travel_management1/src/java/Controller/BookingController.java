/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
import DAO.DAOVoucherCustomer;
import Entity.Customers;
import Entity.HomeStays;
import Entity.VoucherCustomer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nam
 */
@WebServlet(name = "BookingController", urlPatterns = {"/bookingController"})
public class BookingController extends HttpServlet {

    DAOVoucherCustomer daov = new DAOVoucherCustomer();

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
        try ( PrintWriter out = response.getWriter()) {
            String submit = request.getParameter("submit");
            DAOHomeStays dao = new DAOHomeStays();
            HttpSession session = request.getSession();
            Customers cus = (Customers) session.getAttribute("customer");
            String cusid = cus.getAccountC();
            if (submit == null) {
                String homeStayId = request.getParameter("homeStayId");
                HomeStays h = dao.getHomestay(homeStayId);
                List<VoucherCustomer> voucher = daov.getVoucherbyId(cusid);
                double discount = 0.0;
                request.setAttribute("discount", discount);
                request.setAttribute("detail", h);
                request.setAttribute("voucher", voucher);
                request.getRequestDispatcher("Booking.jsp").forward(request, response);
            }
            if ("add".equals(submit)) {
                List<VoucherCustomer> voucher = daov.getVoucherbyId(cusid);
                String homeStayId = request.getParameter("homestayid");
                HomeStays h = dao.getHomestay(homeStayId);
                String d = request.getParameter("discount");
                String neww="0.".concat(d);               
                Double discount=Double.valueOf(neww);
                request.setAttribute("discount", discount);
                request.setAttribute("detail", h);
                request.setAttribute("voucher", voucher);
                request.getRequestDispatcher("Booking.jsp").forward(request, response);
            }
        }
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
        processRequest(request, response);
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
