/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCustomers;
import DAO.DAOSendMail;
import DAO.DAOSupplier;
import Entity.Accounts;
import Entity.Customers;
import Entity.Suppliers;
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
 * @author thinh
 */
@WebServlet(name = "SupplierSendMailVerifyController", urlPatterns = {"/sendMailSup"})
public class SupplierSendMailVerifyController extends HttpServlet {

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
         HttpSession session = request.getSession();
        String EmailService = request.getParameter("EmailService");
        session.setAttribute("EmailService", EmailService);
        response.sendRedirect("SuppilerSendEmail.jsp");
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
        DAOSupplier daoSup = new DAOSupplier();
        //feth form value
        HttpSession session = request.getSession();
        Accounts acc = (Accounts) session.getAttribute("acc");
       Suppliers cus = daoSup.getSuppiler(acc.getAccount());
        String email = request.getParameter("email");
        
        
        if (email.equals(cus.getEmail())) {
            //create instance object of the SendEmail Class
            DAOSendMail sm = new DAOSendMail();
            //get the 6-digit code
            String code = sm.getRandom();

            //craete new user using all information
            User user = new User(email, code);

            //call the send email method
            boolean test = sm.sendEmail(user);

            //check if the email send successfully
            if (test) {
                session.setAttribute("authcode", user);
                response.sendRedirect("SupSendCode");
            } else {
                String alert = "Cannot send verify code. Please check again.";
                request.setAttribute("alert", alert);
                request.getRequestDispatcher("SuppilerSendEmail.jsp").forward(request, response);
            }
        } else {
            String alert = "Wrong Email. Please check again.";
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("SuppilerSendEmail.jsp").forward(request, response);

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
