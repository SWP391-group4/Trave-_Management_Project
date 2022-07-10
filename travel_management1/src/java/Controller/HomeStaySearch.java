/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
import Entity.Categories;
import Entity.HomeStays;
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
 * @author thinh
 */
@WebServlet(name = "HomeStaySearch", urlPatterns = {"/searchHomeStay"})
public class HomeStaySearch extends HttpServlet {

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
        String txtSearch = request.getParameter("txt"); // get du lieu nhap vao
        String txtSearchname = request.getParameter("txtname"); 
        String cateID = request.getParameter("cid");
        String indexPage = request.getParameter("index");
        DAOHomeStays dao = new DAOHomeStays();
        
        //pagging
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        int count = dao.countoDivforSearchCity(txtSearch);
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        request.setAttribute("endPage", endPage);
        //Search
        List<HomeStays> listSearch = dao.SearchbyProvince(index, txtSearch);
        
        List<Categories> listC = dao.ListCate();
        request.setAttribute("listC", listC);
        request.setAttribute("listSearch", listSearch);
        request.setAttribute("txtsearch", txtSearch);
         request.setAttribute("txtSearchname", txtSearchname);
        request.setAttribute("tag", index);
        request.getRequestDispatcher("/listAllBySearchCity.jsp").forward(request, response);
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
