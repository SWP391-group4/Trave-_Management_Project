/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStayDetails;
import Entity.HomeStayDetails;
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
@WebServlet(name = "HomeStayDetailInsert", urlPatterns = {"/HomeStayDetailInsert"})
public class HomeStayDetailInsert extends HttpServlet {

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
        response.sendRedirect("InsertHomeStayDetail.jsp");
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
        DAOHomeStayDetails sup = new DAOHomeStayDetails();

        String HomeStayId = request.getParameter("HomeStayId");
        int BedRoomQty = Integer.parseInt(checkNumber(request.getParameter("BedRoomQty")));
        int BathRoomQty = Integer.parseInt(checkNumber(request.getParameter("BathRoomQty")));
        int LivingRoomQty = Integer.parseInt(checkNumber(request.getParameter("LivingRoomQty")));
        int KitchenQty = Integer.parseInt(checkNumber(request.getParameter("KitchenQty")));
        int BedQty = Integer.parseInt(checkNumber(request.getParameter("BedQty")));
        String CheckIn = request.getParameter("CheckIn");
        String CheckOut = request.getParameter("CheckOut");
        double Price = Double.parseDouble(checkNumber(request.getParameter("Price")));
        double IncurredCost = Double.parseDouble(checkNumber(request.getParameter("IncurredCost")));
        String Description = request.getParameter("Description");
        String Video = request.getParameter("Video");
        
        //validation           

        
        int m = sup.addHomeStayDetails(new HomeStayDetails(HomeStayId, BedRoomQty, BathRoomQty, LivingRoomQty, KitchenQty, BedQty, CheckIn, CheckOut, Price, IncurredCost, Description, Video));
        if (m > 0) {
            String a = "Done";
            request.setAttribute("alert", a);
            request.getRequestDispatcher("InsertHomeStayDetail.jsp").forward(request, response);
        } else {
            String a = "Fails";
            request.setAttribute("alert", a);
            request.getRequestDispatcher("InsertHomeStayDetail.jsp").forward(request, response);

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
    
    public String checkNumber(String number) {
        if (number == null || number.isEmpty()) {
            number = "0";
        }
        return number;
    }

}
