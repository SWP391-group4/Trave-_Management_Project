/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOAccounts;
import Entity.Accounts;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sun.swing.SwingUtilities2;

/**
 *
 * @author nam
 */
@WebServlet(name = "MarketingPassword", urlPatterns = {"/MarketingPassword"})
public class MarketingPassword extends HttpServlet {

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
            String submit = request.getParameter("submit");
            if (submit == null) {
                response.sendRedirect("MarketingPassword.jsp");
            } else {
                Accounts account = (Accounts) request.getSession().getAttribute("acc");
                DAOAccounts daoAccount = new DAOAccounts();
                String oldPasswordDB = daoAccount.getPassword(account.getAccount());
                String oldPassword = request.getParameter("oldPassword");
                String newPassword = request.getParameter("newPassword");
                String confirm = request.getParameter("confirmPassword");

                if (oldPassword.equals(oldPasswordDB)) {
                    if (newPassword.equals(confirm)) {
                        daoAccount.updatePassword(account.getAccount(), newPassword);
                        request.getRequestDispatcher("login").forward(request, response);

                    } else {
                        String alert = "Wrong confirm password";
                        request.setAttribute("alert", alert);
                        request.getRequestDispatcher("MarketingPassword.jsp").forward(request, response);
                    }
                } else {
                    String alert = "Wrong old password";
                    request.setAttribute("alert", alert);
                    request.getRequestDispatcher("MarketingPassword.jsp").forward(request, response);

                }
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
