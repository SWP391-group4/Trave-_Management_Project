/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.*;
import Entity.*;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "ViewContactDetailController", urlPatterns = {"/ViewContactDetail"})
public class ViewContactDetailController extends HttpServlet {

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
        DAOAdmins daoAdmin = new DAOAdmins();
        DAOCustomers daoCus = new DAOCustomers();
        HttpSession session = request.getSession();
        
        String messengerCAId = request.getParameter("messengerCAId");
        
        MessageAdmin message = daoAdmin.getMessage(messengerCAId);
        
        Customers customer = daoCus.getCustomer(message.getAccountC());
        
        request.setAttribute("message", message);
        request.setAttribute("customer", customer);
        session.setAttribute("customer", customer);
        request.getRequestDispatcher("ViewContactAdminDetail.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        DAOAdmins dao = new DAOAdmins();
        String caption="";
        String description = request.getParameter("description");
        
        Customers customer = (Customers) session.getAttribute("customer");

        int n = dao.contactCustomer(new MessageAdmin(caption, description, 1, customer.getAccountC()));
        if (n > 0) {
            String alert = "Send Success!";
            request.setAttribute("alert", alert);
            request.setAttribute("description", description);
            request.getRequestDispatcher("ViewContactAdminDetail.jsp").forward(request, response);
        } else {
            String alert = "Send fail!";
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("ViewContactAdminDetail.jsp").forward(request, response);
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
