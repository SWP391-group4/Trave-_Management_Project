/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBooking;
import DAO.DAOHomeStays;
import DAO.DAOSupplier;
import Entity.HomeStays;
import Entity.SupplierAddresses;
import Entity.SupplierImage;
import Entity.Suppliers;
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
 * @author thinh
 */
@WebServlet(name = "manageHomeStay", urlPatterns = {"/manageHomeStay"})
public class manageHomeStay extends HttpServlet {

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
        HttpSession session = request.getSession();
        String accountS = request.getParameter("accountS");
        DAOHomeStays dao = new DAOHomeStays();
        DAOSupplier daos = new DAOSupplier();
        DAOBooking daob = new DAOBooking();
        Suppliers sup = daos.getSuppiler(accountS);
        SupplierImage Simg = daos.getSUPImage(accountS);
        List<HomeStays> listbyAccountS = dao.getHomeStayforSUP(accountS);
        request.setAttribute("detail", sup);
        request.setAttribute("Simg", Simg);
        request.setAttribute("listbyAccountS", listbyAccountS);
        Suppliers sp = (Suppliers) session.getAttribute("suppliers");
        request.getRequestDispatcher("/manageHomeStay.jsp").forward(request, response);

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
