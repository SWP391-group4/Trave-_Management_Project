/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
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
@WebServlet(name = "loadMoreController", urlPatterns = {"/load"})
public class loadMoreController extends HttpServlet {

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
        DAOHomeStays dao = new DAOHomeStays();
        List<HomeStays> list = dao.getRandomHomeStay();
        PrintWriter out = response.getWriter();
        for (HomeStays temp : list) {
            out.println(" <div class=\"col-md-4\">\n"
                    + "                                            <div class=\"destination\">\n"
                    + "                                                <a href=\"HomeStayDetailController?homeStayID=${o.homeStayID}\" class=\"img img-2\" style=\"background-image: url(images/room-4.jpg);\"></a>\n"
                    + "                                                <div class=\"text p-3\">\n"
                    + "\n"
                    + "                                                    <div class=\"d-flex\">\n"
                    + "\n"
                    + "                                                        <div class=\"one\">\n"
                    + "                                                            <h6><a href=\"HomeStayDetailController?homeStayID="+temp.getHomeStayID()+"\"></a>"+temp.getHomeStayname()+"</h6>\n"
                    + "                                                            <p><i class=\"icon-map-o\"></i> "+temp.getDistrict()+","+temp.getCity()+","+temp.getWard()+"</p>\n"
                    + "                                                        </div>\n"
                    + "\n"
                    + "                                                        <div class=\"two\">\n"
                    + "                                                            <span class=\"price per-price\"><br><small>"+temp.getCateName()+"</small></span>\n"
                    + "                                                        </div>\n"
                    + "                                                        \n"
                    + "                                                    </div>\n"
                    + "\n"
                    + "                                                    <hr>\n"
                    + "                                                    <p class=\"bottom-area d-flex\">\n"
                    + "<span class=\"badge bg-info text-text\">Active</span>\n"
                    + "                                                        <span class=\"ml-auto\"><a href=\"HomeStayDetailController?homeStayID="+temp.getHomeStayID()+"\">Detail</a></span>\n"
                    + "                                                    </p>\n"
                    + "                                                </div>\n"
                    + "                                               \n"
                    + "                                            </div>\n"
                    + "                                        </div>");
        }
        request.getRequestDispatcher("/DetailHomeStay.jsp").forward(request, response);
        
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
