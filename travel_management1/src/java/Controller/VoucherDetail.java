/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOVouchers;
import Entity.Customers;
import Entity.Vouchers;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nam
 */
@WebServlet(name = "VoucherDetail", urlPatterns = {"/VoucherDetail"})
public class VoucherDetail extends HttpServlet {

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
        String service = request.getParameter("go");
        if (service == null) {
            service = "Show";
        }
        DAOVouchers daoV = new DAOVouchers();
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            if (service.equals("Show")) {
                String voucherID = request.getParameter("voucherID");
                List<Vouchers> v = daoV.getVoucherbyId(voucherID);
                request.setAttribute("v", v);
                request.getRequestDispatcher("VoucherDetail.jsp").forward(request, response);
            }
            if (service.equals("Insert")) {
                String submit = request.getParameter("submit");
                if (submit == null) {
                    response.sendRedirect("VoucherDetail");
                } else {
                    String voucherID = request.getParameter("voucherID");
                    String title = request.getParameter("title");
                    String discount = request.getParameter("discount");
                    String image = request.getParameter("image");
                    String quantity = request.getParameter("quantity");
                    HttpSession session = request.getSession();
                    Customers cus = (Customers) session.getAttribute("mar");
                    String cusid = cus.getAccountC();
                    
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
