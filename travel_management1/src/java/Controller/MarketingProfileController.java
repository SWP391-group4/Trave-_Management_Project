/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Marketing;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nam
 */
@WebServlet(name = "MarketingProfileController", urlPatterns = {"/MarketingProfileController"})
public class MarketingProfileController extends HttpServlet {

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
        String service = request.getParameter("go");
        if (service == null) {//call controller direct
            service = "Show";
        }
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            if (service.equals("Show")) {
                //getdata from model
                HttpSession session = request.getSession();
                Marketing mar = (Marketing) session.getAttribute("mar");
                // tim cach dung thang vao jsp
                request.setAttribute("mar", mar);
                request.getRequestDispatcher("MarketingProfile.jsp").forward(request, response);
            }
             if (service.equals("updateMarketing")) {
                //getdata from model
                String submit = request.getParameter("submit");
                 if (submit == null) {
                    String titleID = request.getParameter("titleID");
                    String sql = "SELECT * FROM [dbo].[titles] where title_id='" + titleID + "'";
                    ResultSet rs = c1.getData(sql);
                    ResultSet rs1 = c1.getData("select * from Publishers");
                    request.setAttribute("rsTitle", rs);
                    request.setAttribute("rsPublisher", rs1);
                    dispath(request, response, "/JSP/UpdateTitles.jsp");
                } else {
                    String Title_id = request.getParameter("Title_id");
                    String Title = request.getParameter("Title");
                    String type = request.getParameter("type");
                    String pub_id = request.getParameter("pub_id");
                    String price = request.getParameter("price");
                    String advance = request.getParameter("advance");
                    String royalty = request.getParameter("royalty");
                    String ytd_sales = request.getParameter("ytd_sales");
                    String notes = request.getParameter("notes");
                    String pubdate = request.getParameter("pubdate");
                    String image = request.getParameter("image");
                    double Price = Double.parseDouble(price);
                    double Advance = Double.parseDouble(advance);
                    int Royalty = Integer.parseInt(royalty);
                    int Rtd = Integer.parseInt(ytd_sales);

                    //insert
                    Titles obj = new Titles(Title_id, Title, type, pub_id,
                            Price, Advance, Royalty, Rtd, notes, pubdate, image);
                    out.print(obj);
                    int n = c1.updateTitles(obj);
                    response.sendRedirect("TitlesController");
//                  dispath(request, response, "/JSP/UpdateTitles.jsp");
                }
            }
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
