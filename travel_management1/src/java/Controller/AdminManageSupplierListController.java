/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
import DAO.DAOSupplierTemp;
import Entity.HomeStayAddressses;

import Entity.SupplierHomestays;
import Entity.SupplierImage;
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
@WebServlet(name = "AdminManageSupplierListController", urlPatterns = {"/AdminManageSupplierList"})
public class AdminManageSupplierListController extends HttpServlet {

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
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);

        /* TODO output your page here. You may use following sample code. */
        DAOSupplierTemp daoSup = new DAOSupplierTemp();
        DAOHomeStays daoHome = new DAOHomeStays();
        
        int count = daoHome.countToDiv();
        int endPage = count / 7;
        if (count % 7 != 0) {
            endPage++;
        }

//        --------------------
        String homestayId = (String) request.getSession().getAttribute("homestayId");
        if (homestayId != null) {
            SupplierHomestays supHome = daoSup.getPreview(homestayId);
            HomeStayAddressses homestayAddress = daoSup.getHomeStay(homestayId);
            int evaluate = daoSup.getEvaluate(homestayId);
            SupplierImage supplierImage = daoSup.getSupplierImage(supHome.getAccountS());
            String cateId = supHome.getCateId();
            String cateName = daoSup.getCategoryName(cateId);
            request.setAttribute("homestayId", homestayId);
            //--------------------------
            request.setAttribute("supHome", supHome);
            request.setAttribute("supplierImage", supplierImage);
            request.setAttribute("address", homestayAddress);
            request.setAttribute("evaluate", evaluate);
            request.setAttribute("cateName", cateName);
        }

        List<SupplierHomestays> listHomeStay = daoSup.pagging(index);
        request.setAttribute("endPage", endPage);
        request.setAttribute("list", listHomeStay);
        request.setAttribute("tag", index);
        request.getRequestDispatcher("/AdminManageSupplierList.jsp").forward(request, response);

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
