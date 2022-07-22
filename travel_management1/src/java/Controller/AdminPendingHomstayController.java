/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
import DAO.DAOImages;
import DAO.DAOSupplierTemp;
import Entity.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author phams
 */
@WebServlet(name = "AdminPendingHomstayController", urlPatterns = {"/PendingHomstay"})
public class AdminPendingHomstayController extends HttpServlet {

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
        DAOHomeStays daoHome = new DAOHomeStays();
        DAOSupplierTemp daoSup = new DAOSupplierTemp();
        DAOImages daoImage = new DAOImages();
        String homeStayId = request.getParameter("homeStayId");
        String index = request.getParameter("index");
        String homestayPending = request.getParameter("homestayPending");
        if (homestayPending != null) {
            request.setAttribute("activate", homestayPending);
        }

        HomeStays homestay = daoHome.getHomestayById(homeStayId);
        HomeStayAddressses homeAddress = daoHome.searchByHomeStay(homeStayId);
        Extensions extension_temp = daoHome.getExtension(homeStayId);
        List<String> extension = daoHome.getExtenstion(extension_temp);
        Rules rule = daoHome.getRule(homeStayId);
        List<Images> image = daoImage.getIMG(homeStayId);
        Suppliers supplier = daoSup.getSupplier(homeStayId);
        Categories category = daoSup.getCategories(homeStayId);
        HomeStayDetails homestayDetail = daoSup.getHomestayDetails(homeStayId);

        
        String update = request.getParameter("update");
        if(update != null) {
            daoSup.activateHomestay(homeStayId);
            String alert = "Activate done!";
            request.setAttribute("alert", alert);
        }
        
        request.setAttribute("supplier", supplier);
        request.setAttribute("homestay", homestay);
        request.setAttribute("listImage", image);
        request.setAttribute("category", category);
        request.setAttribute("homestayAddress", homeAddress);
        request.setAttribute("homestayDetail", homestayDetail);
        request.setAttribute("extension", extension);
        request.setAttribute("rule", rule);
//        request.setAttribute("image", image);
        request.setAttribute("index", index);

        request.getRequestDispatcher("PendingHomstay.jsp").forward(request, response);
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
