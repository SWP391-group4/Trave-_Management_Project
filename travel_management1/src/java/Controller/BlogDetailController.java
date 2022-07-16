/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBlogDetails;
import DAO.DAOBlogs;
import DAO.DAOExtensions;
import DAO.DAOHomeStays;
import DAO.DAOMarketing;
import DAO.DAOReviews;
import DAO.DAORules;
import DAO.DAOSupplier;
import Entity.BlogDetails;
import Entity.Blogs;
import Entity.Extensions;
import Entity.HomeStays;
import Entity.Marketing;
import Entity.Reviews;
import Entity.Rules;
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
@WebServlet(name = "BlogDetailController", urlPatterns = {"/blogDetailController"})
public class BlogDetailController extends HttpServlet {

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
        String blogId = request.getParameter("blogId");
        HttpSession session = request.getSession();
        DAOBlogs daob = new DAOBlogs();
        DAOBlogDetails daobd = new DAOBlogDetails();
//        DAOMarketing daom = new DAOMarketing();
        BlogDetails blogdetail = daobd.getDetailbyBlogID(blogId);
//        Blogs blog = daob.getAllbyBlogID(blogId);
////        String accountM = blog.getAccountM();
//        Marketing Accm = daom.getMarketing(accountM);
        request.setAttribute("blogdetail", blogdetail);
//        request.setAttribute("accountM", Accm);
        
        request.getRequestDispatcher("/BlogDetail.jsp").forward(request, response);
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
