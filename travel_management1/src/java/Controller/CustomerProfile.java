/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCustomers;
import DAO.DAOFlightHistory;
import DAO.DAOHotelHistory;
import DAO.DAORestaurantHistory;
import Entity.Customers;
import Entity.FlightHistory;
import Entity.HotelHistory;
import Entity.RestaurantHistory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nguye
 */
public class CustomerProfile extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CustomerProfile</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CustomerProfile at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession session = request.getSession();
        DAOFlightHistory daoFLI = new DAOFlightHistory();
        DAOHotelHistory daoHTHis = new DAOHotelHistory();
        DAOCustomers daoCus = new DAOCustomers();
        DAORestaurantHistory daoResHis = new DAORestaurantHistory();
        Customers cus = daoCus.getCustomerById("USER018");
        List<RestaurantHistory> reslist = daoResHis.getAllRSHistoryByCusId("USER018");
        List<HotelHistory> hotellist = daoHTHis.getAllHTHistoryByCusId("USER018");        
        List<FlightHistory> flightList = daoFLI.getAllFLHistoryByCusId("USER018");        
        request.setAttribute("customer", cus);
        request.setAttribute("resHisList", reslist);
        request.setAttribute("hotelList", hotellist);
        request.setAttribute("flightList", flightList);
        request.getRequestDispatcher("CustomerProfile.jsp").forward(request, response);
        
   
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customers user = (Customers) session.getAttribute("accountsession");
        String oldpass = request.getParameter("oldpass");
        String newpass = request.getParameter("newpass");
        String renewpass = request.getParameter("renewpass");
        request.setAttribute("user", user);
        String hashpass = oldpass;
        if(!hashpass.equals(user.getCustomersPass()) || !newpass.equals(renewpass))
        {
            request.setAttribute("error", "Error Change Password");
            request.getRequestDispatcher("CustomerProfile.jsp").forward(request, response);
            return;
        }
        CustomersDAO dao = new CustomersDAO();
        dao.updatePassword(user.getCustomersId(), hashpass);
        user.setCustomersPass(hashpass);
        session.setAttribute("user", user);
        request.setAttribute("success", "Change Password Successful");
        request.getRequestDispatcher("Profile.jsp").forward(request, response);
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
