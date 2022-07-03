/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCustomers;
import Entity.Accounts;
import Entity.User;
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
@WebServlet(name = "ResetCodeVerifyController", urlPatterns = {"/ResetCodeVerify"})
public class ResetCodeVerifyController extends HttpServlet {

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
        response.sendRedirect("SendCodeReset.jsp");
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
        DAOCustomers daoCus = new DAOCustomers();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("authcode");
        String code = request.getParameter("authcode");
        if (code.equals(user.getCode())) {
            Accounts acc = (Accounts) session.getAttribute("acc");
            String email = (String) session.getAttribute("email");
            int n = daoCus.updateCustomerEmail(email, acc.getAccount());
            // Fault
            if (n > 0) {
                String alert = "Email Updated";
                request.setAttribute("alert", alert);
                request.getRequestDispatcher("CustomerProfile").forward(request, response);
            } else {
                String alert = "Something is fucked up";
                request.setAttribute("alert", alert);
                request.getRequestDispatcher("CustomerProfile").forward(request, response);
            }
        } else {
            String alert = "Wrong code!";
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("SendCodeVerify.jsp").forward(request, response);
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
