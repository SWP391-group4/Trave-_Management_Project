/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOAccounts;
import DAO.DAOSupplier;
import Entity.Accounts;
import Entity.Suppliers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "SupplierInsert", urlPatterns = {"/SupplierInsert"})
public class SupplierInsert extends HttpServlet {

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

        response.sendRedirect("InsertSupplier.jsp");

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
        DAOSupplier sup = new DAOSupplier();

        String accountS = request.getParameter("accountS");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String fax = request.getParameter("fax");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        
        //validation           

        
        int m = sup.addSuppliers(new Suppliers(accountS, firstName, lastName, fax, email, phone, 0));
        if (m > 0) {
            String a = "Done";
            request.setAttribute("alert", a);
            request.getRequestDispatcher("InsertSupplier.jsp").forward(request, response);
        } else {
            String a = "Fails";
            request.setAttribute("alert", a);
            request.getRequestDispatcher("InsertSupplier.jsp").forward(request, response);

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    public String checkNumber(String number) {
        if (number == null || number.isEmpty()) {
            number = "0";
        }
        return number;
    }

}
