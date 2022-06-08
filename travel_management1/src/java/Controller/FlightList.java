/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOPlanes;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nam
 */
@WebServlet(name = "FlightList", urlPatterns = {"/FlightList"})
public class FlightList extends HttpServlet {

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
        DAOPlanes dao = new DAOPlanes();
        try ( PrintWriter out = response.getWriter()) {
            // upload
            /* TODO output your page here. You may use following sample code. */
            String sql = "select p.PlaneName,p.PlaneCate,t.SeatClass,pb.PlaneBrandName,t.SeatNumber,t.Price,f.StartTimeA,f.[From],f.[To],t.FlightId from planes p\n"
                    + "inner join FlightDetails f on p.PlaneId=f.PlaneId\n"
                    + "inner join Airports a on a.AirportId=p.AirportId\n"
                    + "inner join Tickets t on t.FlightId=f.FlightId\n"
                    + "inner join PlaneBrands pb on pb.PlaneBrandId=p.PlaneBrandId";
            ResultSet rs = dao.getData(sql);
            request.setAttribute("list", rs);
            RequestDispatcher dispath
                    = request.getRequestDispatcher("FlightList.jsp");
            dispath.forward(request, response);
        }

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
