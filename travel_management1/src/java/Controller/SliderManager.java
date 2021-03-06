/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStayAddresses;
import DAO.DAOSlider;
import Entity.HomeStayAddressses;
import Entity.Marketing;
import Entity.Slider;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author nam
 */
@MultipartConfig
@WebServlet(name = "SliderManager", urlPatterns = {"/SliderManager"})
public class SliderManager extends HttpServlet {

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
        String service = request.getParameter("go");
        DAOHomeStayAddresses dao = new DAOHomeStayAddresses();
        if (service == null) {
            service = "Show";
        }
        DAO.DAOSlider daoS = new DAOSlider();
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            if ("Show".equals(service)) {
                List<Slider> list = daoS.viewSlider();
                request.setAttribute("list", list);
                request.getRequestDispatcher("ListSlider.jsp").forward(request, response);
            }
            if ("Update".equals(service)) {
                String submit = request.getParameter("submit");
                if (submit == null) {
                    String sliderID = request.getParameter("sliderID");
                    List<String> list = dao.HomeStayAddressCity();
                    String s = daoS.getSliderName(sliderID);
                    String img = daoS.getSliderImage(sliderID);
                    request.setAttribute("sliderID", sliderID);
                    request.setAttribute("list", list);
                    request.setAttribute("s", s);
                    request.setAttribute("img", img);
                    request.getRequestDispatcher("UpdateSlider.jsp").forward(request, response);
                } else {
                    String sliderID = request.getParameter("sliderID");
                    String city = request.getParameter("city");
                    HttpSession session = request.getSession();
                    Marketing mar = (Marketing) session.getAttribute("mar");
                    String marketingid = mar.getAccountM();
                    Part part = request.getPart("image");
                    
                    String realPart = request.getServletContext().getRealPath("/images");
                    String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                    if (filename.isEmpty()) {
                        filename = daoS.getSliderImage(sliderID);
                    } else {
                        part.write(realPart + "/" + filename);
                    }
                    
                    Slider ob= new Slider(sliderID, city, filename, marketingid);
                    int n=daoS.updateSlider(ob);
                    response.sendRedirect("SliderManager");
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
