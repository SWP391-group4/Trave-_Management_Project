/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOAccounts;
import DAO.DAOAdmins;
import DAO.DAOCustomers;
import DAO.DAOMarketing;
import DAO.DAOSupplier;
import Entity.Accounts;
import Entity.*;
import java.io.IOException;
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

        HttpSession session = request.getSession();

        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Accounts acc = dao.search(account, password);
        //login
        if (acc == null) {
            String noti = "Incorrect user name or password,please try again";
            request.setAttribute("noti", noti);
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            int type = acc.getType();
          

            switch (type) {
                case 1:
                    DAOAdmins daoAd = new DAOAdmins();
                    Admins admin = daoAd.getAdmin(account);
                    int total = daoAd.totalMessage();
                    session.setAttribute("acc", acc);
                    session.setAttribute("total", total);
                    session.setAttribute("admin", admin);
                    response.sendRedirect("adminController");
                    request.getSession().setMaxInactiveInterval(600);

                    break;
                case 2:
                    DAOMarketing daoM = new DAOMarketing();
                    Marketing mar = daoM.getMarketing(account);
                    session.setAttribute("acc", acc);
                    session.setAttribute("mar", mar);
                    response.sendRedirect("MarketingProfileController");
                    request.getSession().setMaxInactiveInterval(600);

                    break;
                case 3:
                    DAOSupplier daoSup = new DAOSupplier();
                    Suppliers sp = daoSup.getSuppiler(account);
                    SupplierAddresses spa = daoSup.getSupplierAddresses(account);
                    session.setAttribute("acc", acc);
                    session.setAttribute("suppliers", sp);
                    session.setAttribute("suppliersAddress", spa);
                    response.sendRedirect("suppilerProflieController");
                    request.getSession().setMaxInactiveInterval(600);

                    break;
                case 4:
                    DAOCustomers daoCus = new DAOCustomers();
                    Customers cus = daoCus.getCustomer(account);
                    CustomerAddresses cusAddress = daoCus.getCustomerAddresses(account);
                    session.setAttribute("acc", acc);
                    session.setAttribute("customer", cus);
                    session.setAttribute("customerAddress", cusAddress);
                    response.sendRedirect("Home");
                    request.getSession().setMaxInactiveInterval(600);

                    break;
                default:
                    throw new AssertionError();
            }
//            account = (String) session.getAttribute("account");
//            if (account == null) {
//                response.sendRedirect("Login.jsp");
//                return;     
//            }
            
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
