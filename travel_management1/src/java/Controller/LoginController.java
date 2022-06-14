/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOAccounts;
import DAO.DAOAdmins;
import DAO.DAOCustomers;
import Entity.Accounts;
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
 * @author thinh
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

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
        DAOAccounts dao = new DAOAccounts();
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Accounts acc = dao.search(account, password);
        if (acc == null) {

            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            int type = acc.getType();
            switch (type) {
                case 1:
                    DAOAdmins daoAd = new DAOAdmins();
                    Admins admin = daoAd.getAdmin(account);
                    session.setAttribute("acc", acc);
                    session.setAttribute("admin", admin);
                    response.sendRedirect("AdminProfileController");
                    break;
                case 2:
                    session.setAttribute("accM", acc);
                    response.sendRedirect("MarketingHome.jsp");
                    break;
                case 3:
                    session.setAttribute("accS", acc);
                    response.sendRedirect("SuppilerProfile.jsp");
                    break;
                case 4:
                    DAOCustomers daoCus = new DAOCustomers();
                    Customers cus = daoCus.getCustomer(account);
                    CustomerAddresses cusAddress = daoCus.getCustomerAddresses(account);
                    session.setAttribute("acc", acc);
                    session.setAttribute("customer", cus);
                    session.setAttribute("customerAddress", cusAddress);
                    response.sendRedirect("CustomerProfile");
                    break;
                default:
                    throw new AssertionError();
            }

        }

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
        response.sendRedirect("Login.jsp");
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
