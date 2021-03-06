/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
import DAO.DAOReviews;
import DAO.DAORules;
import DAO.DAOSupplier;
import Entity.HomeStays;
import Entity.Reviews;
import Entity.Rules;
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
@WebServlet(name = "DisplayHomeStayInfor_Sup", urlPatterns = {"/displayinf"})
public class DisplayHomeStayInfor_Sup extends HttpServlet {

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
        Suppliers sp = (Suppliers) session.getAttribute("suppliers");
        String homeStayID = request.getParameter("homeStayID");
        DAOHomeStays dao = new DAOHomeStays();
        DAOReviews daor = new DAOReviews();
        DAORules rules=new DAORules();
        List<Rules> listrule=rules.getRulebyHomeStayID(homeStayID);
        request.setAttribute("listrule", listrule);
        List<Reviews> r = daor.getFeedbackByHID(homeStayID);
        request.setAttribute("review", r);
        HomeStays h = dao.getHomestay(homeStayID);
        String accountS = h.getAccountS();
        List<HomeStays> listBySupplier = dao.getRandomHomeStaybySuppiler(accountS);
        request.setAttribute("listBySupplier", listBySupplier);
        request.setAttribute("display", h);
        request.getRequestDispatcher("/DisplayDetailHomeStay.jsp").forward(request, response);

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
