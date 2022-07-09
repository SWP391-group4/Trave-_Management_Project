/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
import DAO.DAOSupplier;
import Entity.HomeStays;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "HomeStayInsert", urlPatterns = {"/HomeStayInsert"})
public class HomeStayInsert extends HttpServlet {

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
//String lastId1 = daoV.lastVoucherId().substring(0, 6);
//                String s1 = lastId1.substring(0, 3);
//                String s2 = lastId1.substring(3);
//                int numnews = Integer.parseInt(s2) + 1;
//                String n = Integer.toString(numnews);
//                String newID = s1.concat(n);
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
        response.sendRedirect("InsertHomeStay.jsp");
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
        DAOHomeStays sup = new DAOHomeStays();
        
        String HomeStayId = request.getParameter("HomeStayId");
        String HomeStayName = request.getParameter("HomeStayName");
        String CateId = request.getParameter("CateId");
        String AccountS = request.getParameter("AccountS");
        
        //validation           

        
        int m = sup.addHomeStays(new HomeStays(HomeStayId, HomeStayName, CateId, AccountS));
        if (m > 0) {
            String a = "Done";
            request.setAttribute("alert", a);
            request.getRequestDispatcher("InsertHomeStay.jsp").forward(request, response);
        } else {
            String a = "Fails";
            request.setAttribute("alert", a);
            request.getRequestDispatcher("InsertHomeStay.jsp").forward(request, response);

        }
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
