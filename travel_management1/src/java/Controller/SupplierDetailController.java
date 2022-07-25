/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOImages;
import DAO.DAOSupplierTemp;
import Entity.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tungg
 */
@WebServlet(name = "SupplierDetailController", urlPatterns = {"/SupplierDetail"})
public class SupplierDetailController extends HttpServlet {

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
        
            /* TODO output your page here. You may use following sample code. */
            DAOSupplierTemp daoSup = new DAOSupplierTemp();
            String homestayId = request.getParameter("homestay");
            DAOImages daoImages = new DAOImages();
            //-----Homestay information------
            HomeStays homestay = daoSup.getHomeStayInfo(homestayId);
            HomeStayAddressses homestayAddress = daoSup.getHomeStay(homestayId);
            HomeStayDetails homestayDetail = daoSup.getHomestayDetails(homestayId);
            Categories category = daoSup.getCategories(homestayId);
            Extensions extention = daoSup.getExtenstion(homestayId);
            List<String> listExtentions = daoSup.getExtenstion(extention);
            Rules rule = daoSup.getRule(homestayId);
            
            request.setAttribute("homestay", homestay);
            request.setAttribute("homestayAddress", homestayAddress);
            request.setAttribute("homestayDetail", homestayDetail);
            request.setAttribute("category",category );
            request.setAttribute("rule", rule.getListRules());
            request.setAttribute("listExtentions", listExtentions);
            
            //------------------------------
            List<Images> listImage = daoImages.getIMG(homestayId);
            //-----Supplier information----
            Suppliers supplier = daoSup.getSupplier(homestayId);
            String accountS = supplier.getAccountS();
            SupplierAddresses supplierAddress = daoSup.getSupplierAddress(accountS);
            
            SupplierImage supplierImage = daoSup.getSupplierImage(accountS);
            System.out.println(supplierImage);
            request.setAttribute("listImage", listImage);
            request.setAttribute("supplierImage", supplierImage);
            request.setAttribute("supplier", supplier);
            request.setAttribute("supplierAddress", supplierAddress);
            //---------------
            
            
            
            request.getRequestDispatcher("SupplierDetail.jsp").forward(request, response);
            
        
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
