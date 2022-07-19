/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
import DAO.DAOSupplierTemp;
import Entity.HomeStayAddressses;
import Entity.*;
import Entity.Suppliers;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "AdminPendingHomestayListController", urlPatterns = {"/AdminPendingHomestayList"})
public class AdminPendingHomestayListController extends HttpServlet {

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
        DAOHomeStays daoHomestay = new DAOHomeStays();
        DAOSupplierTemp daoSupTemp = new DAOSupplierTemp();
        
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        int count = daoHomestay.totalPendingHomestay();
        int endPage = count / 5;
        if (count % 5 != 0) {
            endPage++;
        }

        List<HomeStays> listHomestay = daoHomestay.paggingHomestayPending(index);

        //-------------------------------
        List<Suppliers> listSupplier = new ArrayList<>();
        List<HomeStayAddressses> listAddress;
        List<Categories> listCat = new ArrayList<>();
        List<HomeStayDetails> listDetail = new ArrayList<>();
        
        listAddress = daoHomestay.getListAddress(listHomestay);
        for (HomeStays o : listHomestay) {
            listSupplier.add(daoSupTemp.getSupplier(o.getHomeStayID()));
            listCat.add(daoHomestay.getCategory(o.getHomeStayID()));
            listDetail.add(daoHomestay.getHomestayDetail(o.getHomeStayID()));
            
        }

        //-------------------------------
        
        request.setAttribute("endPage", endPage);
        request.setAttribute("list", listHomestay);
        request.setAttribute("listSupplier", listSupplier);
        request.setAttribute("listAddress", listAddress);
        request.setAttribute("listCat", listCat);
        request.setAttribute("listDetail", listDetail);
        request.setAttribute("size", listHomestay.size());
        request.setAttribute("tag", index);
        request.getSession().setAttribute("tag", index);
        request.getRequestDispatcher("RegisterHomestayList.jsp").forward(request, response);
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
