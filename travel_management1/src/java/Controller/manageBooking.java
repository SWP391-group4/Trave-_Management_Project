/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBooking;
import DAO.DAOCustomers;
import DAO.DAOHomeStays;
import DAO.DAOSupplier;
import Entity.Booking;
import Entity.HomeStays;
import Entity.Suppliers;
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
 * @author thinh
 */
@WebServlet(name = "manageBooking", urlPatterns = {"/manageBooking"})
public class manageBooking extends HttpServlet {

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
      String homeStayID=request.getParameter("homeStayID");
        DAOBooking dao = new DAOBooking();
        DAOCustomers daoc=new DAOCustomers();
        List<Booking> listhomeStayID=dao.getBookingbyHomeStayID(homeStayID);
        List<Booking> list=dao.getLastBooking(homeStayID);
//         String status = request.getParameter("status");
//              String order = request.getParameter("orderNumber");
//               int Order = Integer.parseInt(order);
//               Booking bok=daoc.getbyord(Order);
//                  request.setAttribute("bok", bok);
//        if (status != null) {
//            if (status.equals("1")) {
//                dao.updateBookingStatus(0, Order);
//            } else {
//                dao.updateBookingStatus(1, Order);
//            }
//        }
 
        request.setAttribute("listhomeStayID", listhomeStayID);
         request.setAttribute("list", list);
         request.getRequestDispatcher("/manageBooking.jsp").forward(request, response);
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