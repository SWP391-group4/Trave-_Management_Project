/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBooking;
import DAO.DAOSupplier;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thinh
 */
@WebServlet(name = "viewchart", urlPatterns = {"/viewchart"})
public class viewchart extends HttpServlet {

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
        DAOBooking dao = new DAOBooking();
        DAOSupplier daos=new DAOSupplier();
        String homeStayID = request.getParameter("homeStayID");
        //count
        String count1 = daos.numberOfBookingbyMonth(1, homeStayID);
        String count2 = daos.numberOfBookingbyMonth(2, homeStayID);
        String count3 = daos.numberOfBookingbyMonth(3, homeStayID);
        String count4 = daos.numberOfBookingbyMonth(4, homeStayID);
        String count5 = daos.numberOfBookingbyMonth(5, homeStayID);
        String count6 = daos.numberOfBookingbyMonth(6, homeStayID);
        String count7 = daos.numberOfBookingbyMonth(7, homeStayID);
        String count8 = daos.numberOfBookingbyMonth(8, homeStayID);
        String count9 = daos.numberOfBookingbyMonth(9, homeStayID);
        String count10 = daos.numberOfBookingbyMonth(10, homeStayID);
        String count11 = daos.numberOfBookingbyMonth(11, homeStayID);
        String count12 = daos.numberOfBookingbyMonth(12, homeStayID);
        //month
        String Month1 = dao.pricePerMonth(1, homeStayID);
        String Month2 = dao.pricePerMonth(2, homeStayID);
        String Month3 = dao.pricePerMonth(3, homeStayID);
        String Month4 = dao.pricePerMonth(4, homeStayID);
        String Month5 = dao.pricePerMonth(5, homeStayID);
        String Month6 = dao.pricePerMonth(6, homeStayID);
        String Month7 = dao.pricePerMonth(7, homeStayID);
        String Month8 = dao.pricePerMonth(8, homeStayID);
        String Month9 = dao.pricePerMonth(9, homeStayID);
        String Month10 = dao.pricePerMonth(10, homeStayID);
        String Month11 = dao.pricePerMonth(11, homeStayID);
        String Month12 = dao.pricePerMonth(12, homeStayID);

        request.setAttribute("Month1", Month1);
        request.setAttribute("Month2", Month2);
        request.setAttribute("Month3", Month3);
        request.setAttribute("Month4", Month4);
        request.setAttribute("Month5", Month5);
        request.setAttribute("Month6", Month6);
        request.setAttribute("Month7", Month7);
        request.setAttribute("Month8", Month8);
        request.setAttribute("Month9", Month9);
        request.setAttribute("Month10", Month10);
        request.setAttribute("Month11", Month11);
        request.setAttribute("Month12", Month12);

        request.setAttribute("count1", count1);
        request.setAttribute("count2", count2);
        request.setAttribute("count3", count3);
        request.setAttribute("count4", count4);
        request.setAttribute("count5", count5);
        request.setAttribute("count6", count6);
        request.setAttribute("count7", count7);
        request.setAttribute("count8", count8);
        request.setAttribute("count9", count9);
        request.setAttribute("count10", count10);
        request.setAttribute("count11", count11);
        request.setAttribute("count12", count12);

        request.getRequestDispatcher("chart.jsp").forward(request, response);
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
