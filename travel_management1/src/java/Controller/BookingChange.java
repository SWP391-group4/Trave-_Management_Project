package Controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import DAO.DAOBooking;
import DAO.DAOCustomers;
import Entity.Booking;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thinh
 */
@WebServlet(urlPatterns = {"/bookingchange"})
public class BookingChange extends HttpServlet {

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
        String service = request.getParameter("service");
        if (service == null) {
            service = "show";
        }
        response.setContentType("text/html;charset=UTF-8");
        String update = request.getParameter("update");
        if (service.equals("show")) {
            String homeStayID = request.getParameter("homeStayID");
            request.setAttribute("homeStayID", homeStayID);
            DAOBooking dao = new DAOBooking();
            DAOCustomers daoc = new DAOCustomers();
            List<Booking> listhomeStayID = dao.getBookingbyHomeStayID(homeStayID);
            request.setAttribute("listhomeStayID", listhomeStayID);
            request.getRequestDispatcher("/BookingChange.jsp").forward(request, response);
        }
        if (service.equals("update")) {
            String homeStayID = request.getParameter("homeStayID");
            String orderNumber = request.getParameter("orderNumber");
            int OrderNumber = Integer.parseInt(orderNumber);
            DAOBooking dao = new DAOBooking();
            dao.updateBookingStatusbyORD(OrderNumber, homeStayID);
            DAOCustomers daoc = new DAOCustomers();
            List<Booking> listhomeStayID = dao.getBookingbyHomeStayID(homeStayID);
            request.setAttribute("listhomeStayID", listhomeStayID);
            request.getRequestDispatcher("/BookingChange.jsp").forward(request, response);

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
