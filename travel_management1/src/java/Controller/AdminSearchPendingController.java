/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOSupplierTemp;
import Entity.Categories;
import Entity.HomeStayAddressses;
import Entity.HomeStays;
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
@WebServlet(name = "AdminSearchPendingController", urlPatterns = {"/AdminSearchPending"})
public class AdminSearchPendingController extends HttpServlet {

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
        DAOSupplierTemp daoSup = new DAOSupplierTemp();

        String search = request.getParameter("search");
        request.getSession().setAttribute("search", search);
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        int count = daoSup.totalPending(search);
        int endPage = count / 5;
        if (count % 5 != 0) {
            endPage++;
        }

        //-----------------------
        String supplierId = request.getParameter("supplierId");
        if (supplierId != null) {
            List<HomeStays> list = daoSup.getListHoneStayBySupplierId(supplierId);
            List<HomeStayAddressses> listAddress = new ArrayList<>();
            List<Categories> listCat = new ArrayList<>();
            for (HomeStays o : list) {
                listAddress.add(daoSup.getHomeStay(o.getHomeStayID()));
                listCat.add(daoSup.getCategories(o.getHomeStayID()));
            }
            //-----------------------
            String update = request.getParameter("update");
            if (update != null) {
                daoSup.updateSupplierStatus(supplierId);
            }
            //-----------------------
            request.setAttribute("listHomestay", list);
            request.setAttribute("listCat", listCat);
            request.setAttribute("listAddress", listAddress);
            request.setAttribute("size", listAddress.size());
        }
        //-----------------------

        List<Suppliers> listSup = daoSup.paggingPending(index, search);
        request.setAttribute("supplierId", supplierId);
        request.setAttribute("endPage", endPage);
        request.setAttribute("list", listSup);
        request.setAttribute("tag", index);
        request.getSession().setAttribute("tag", index);

        request.getRequestDispatcher("SearchPendingRegister.jsp").forward(request, response);
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
