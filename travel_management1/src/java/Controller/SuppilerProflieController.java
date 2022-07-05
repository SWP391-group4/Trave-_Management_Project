/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOSupplier;
import Entity.SupplierAddresses;
import Entity.SupplierImage;
import Entity.Suppliers;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author thinh
 */
@WebServlet(name = "SuppilerProflieController", urlPatterns = {"/suppilerProflieController"})
public class SuppilerProflieController extends HttpServlet {

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
        Suppliers sp = (Suppliers) session.getAttribute("suppliers");
        SupplierAddresses spa = (SupplierAddresses) session.getAttribute("suppliersAddress");
        request.setAttribute("sp", sp);
        request.setAttribute("spa", spa);
        request.getRequestDispatcher("SuppilerProfile.jsp").forward(request, response);
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
        DAOSupplier daosup = new DAOSupplier();
        //Update SuppilerProfile 

//        Part part = request.getPart("image");
//        String realPart = request.getServletContext().getRealPath("/images");
//        String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
//        if (filename.isEmpty()) {
            HttpSession session = request.getSession();
            
            Suppliers sp = (Suppliers) session.getAttribute("suppliers");
                 SupplierAddresses spa = (SupplierAddresses) session.getAttribute("suppliersAddress");
//            SupplierImage spim=daosup. getSUPImage(sp.getAccountS());
//            String img =spim.getImg_Avatar();
            String account = sp.getAccountS();
            String firstName = request.getParameter("fname");
            String lastName = request.getParameter("lname");
            String fax = sp.getFax();
            String email = sp.getEmail();
            String phone = sp.getPhone();
//            String specific = request.getParameter("specific");
//            String ward = request.getParameter("ward");
//            String district = request.getParameter("district");
//            String city = request.getParameter("city");
            Suppliers sup_temp = new Suppliers(account, firstName, lastName, fax, email, phone);
//            SupplierAddresses address_temp = new SupplierAddresses(account, city, district, specific, ward);
            int n = daosup.updateSupplier(sup_temp);
//            int m = daosup.updateSUPImage(spim);
            if (n == 0 ) {
                String noti = "Update fails";
                request.setAttribute("sp", sp);
//                request.setAttribute("spa", spa);
//                 request.setAttribute("spim", spim);
                request.setAttribute("noti", noti);
                request.getRequestDispatcher("SuppilerProfile.jsp").forward(request, response);
            } else {
                String noti = "Update done.";
                request.setAttribute("sp", sup_temp);
//                  request.setAttribute("spim", spim);
//                request.setAttribute("spa", address_temp);
                request.setAttribute("noti", noti);
                request.getRequestDispatcher("SuppilerProfile.jsp").forward(request, response);
            }

//        } else {
//
//        }
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
