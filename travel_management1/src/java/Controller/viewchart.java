/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBooking;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thinh
 */
@WebServlet(name = "viewchart", urlPatterns = {"/viewchart"})
public class viewchart extends HttpServlet {

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
        DAOBooking dao = new DAOBooking();
        int month = dao.getMonth();
        String homeStayID = request.getParameter("homeStayID");
        String totalPriceMonth1 = dao.totalPricePerMonth(1, homeStayID);
        String totalPriceMonth2 = dao.totalPricePerMonth(2, homeStayID);
        String totalPriceMonth3 = dao.totalPricePerMonth(3, homeStayID);
        String totalPriceMonth4 = dao.totalPricePerMonth(4, homeStayID);
        String totalPriceMonth5 = dao.totalPricePerMonth(5, homeStayID);
        String totalPriceMonth6 = dao.totalPricePerMonth(6, homeStayID);
        String totalPriceMonth7 = dao.totalPricePerMonth(7, homeStayID);
        String totalPriceMonth8 = dao.totalPricePerMonth(8, homeStayID);
        String totalPriceMonth9 = dao.totalPricePerMonth(9, homeStayID);
        String totalPriceMonth10 = dao.totalPricePerMonth(10, homeStayID);
        String totalPriceMonth11 = dao.totalPricePerMonth(11, homeStayID);
        String totalPriceMonth12 = dao.totalPricePerMonth(12, homeStayID);
        request.setAttribute("totalPriceMonth1", totalPriceMonth1);
        request.setAttribute("totalPriceMonth2", totalPriceMonth2);
        request.setAttribute("totalPriceMonth3", totalPriceMonth3);
        request.setAttribute("totalPriceMonth4", totalPriceMonth4);
        request.setAttribute("totalPriceMonth5", totalPriceMonth5);
        request.setAttribute("totalPriceMonth6", totalPriceMonth6);
        request.setAttribute("totalPriceMonth7", totalPriceMonth7);
        request.setAttribute("totalPriceMonth8", totalPriceMonth8);
        request.setAttribute("totalPriceMonth9", totalPriceMonth9);
        request.setAttribute("totalPriceMonth10", totalPriceMonth10);
        request.setAttribute("totalPriceMonth11", totalPriceMonth11);
        request.setAttribute("totalPriceMonth12", totalPriceMonth12);

        request.getRequestDispatcher("chart.jsp").forward(request, response);
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
