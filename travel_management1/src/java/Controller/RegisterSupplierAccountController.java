/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOAccounts;
import Entity.Accounts;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author phams
 */
@WebServlet(name = "RegisterSupplierAccountController", urlPatterns = {"/RegisterSupplierAccount"})
public class RegisterSupplierAccountController extends HttpServlet {

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
        String user = request.getParameter("user");
            String password = request.getParameter("password");
            String re_password = request.getParameter("re_password");
            if (user == null || password == null) {
                String alert5 = "Please enter all your text filed";
                request.setAttribute("alert5", alert5);
                request.getRequestDispatcher("RegisterSupplierAccount.jsp").forward(request, response);

            }
            if (!password.equals(re_password)) {
                String alert1 = "Password is not match re_password";
                request.setAttribute("alert1", alert1);
                request.getRequestDispatcher("RegisterSupplierAccount.jsp").forward(request, response);
            } else {
                DAOAccounts dao = new DAOAccounts();
                Accounts a = dao.checkAccount(user);
                if (a == null) {
                    Accounts acc = new Accounts(user, password, 3);
                    dao.signUpSupplier(user, password);
                    request.getSession().setAttribute("acc", acc);
                    response.sendRedirect("SupplierRegister");
                } else {
                    String alert = "Account have exit,please try again!";
                    request.setAttribute("alert", alert);
                    request.getRequestDispatcher("RegisterSupplierAccount.jsp").forward(request, response);

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
