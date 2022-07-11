/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOHomeStays;
import Entity.Categories;
import Entity.Extensions;
import Entity.HomeStayDetails;
import Entity.HomeStays;
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
import sun.font.EAttribute;

/**
 *
 * @author thinh
 */
@WebServlet(name = "UpdateHomeStayDetail", urlPatterns = {"/update"})
public class UpdateHomeStayDetail extends HttpServlet {

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
        DAOHomeStays dao = new DAOHomeStays();
        List<Categories> listC = dao.ListCate();
        request.setAttribute("listC", listC);
        request.getRequestDispatcher("/HomeStayUpdate.jsp").forward(request, response);
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
         DAOHomeStays dao = new DAOHomeStays();
        HttpSession session = request.getSession();
        HomeStays h = (HomeStays) session.getAttribute("homestays");
           String homeStayID = h.getHomeStayID();
        request.setAttribute("h",h);
         request.getRequestDispatcher("HomeStayUpdate.jsp").forward(request, response);
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
         DAOHomeStays dao = new DAOHomeStays();
        HttpSession session = request.getSession();
        HomeStays h = (HomeStays) session.getAttribute("homestays");
        HomeStayDetails hd=(HomeStayDetails)session.getAttribute("homestaydetails");
        Rules r= (Rules)session.getAttribute("rules");
        Extensions e=(Extensions)session.getAttribute("extensions");
        //get homestayid
        String homeStayID = h.getHomeStayID();
        String homeStayName = h.getHomeStayname();
        String cateId = request.getParameter("catid");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        String description=request.getParameter("description");
        String bedQty = request.getParameter("bedQty");
        String bedroomQty = request.getParameter("bedroomQty");
        String bathRoomQty = request.getParameter("bathRoomQty");
        String livingRoomQty = request.getParameter("livingRoomQty");
        String kitchenQty = request.getParameter("kitchenQty");
        String price=request.getParameter("price");
        String incurredCost=request.getParameter("incurredCost");
        String status=request.getParameter("status");
        String listextensions =request.getParameter("listextensions");
        String video=request.getParameter("video");
        String rules=request.getParameter("rules");
        int Status=Integer.parseInt(status);
        double Price=Double.parseDouble(price);
        int BedQty = Integer.parseInt(bedQty);
        int BedroomQty = Integer.parseInt(bedroomQty);
        int BathRoomQty = Integer.parseInt(bathRoomQty);
        int LivingRoomQty = Integer.parseInt(livingRoomQty);
        int KitchenQty = Integer.parseInt(kitchenQty);
        double IncurredCost=Double.parseDouble(incurredCost);
        //////GetTemp
        HomeStays h_temp=new HomeStays(homeStayID, homeStayName, cateId, Status);
        HomeStayDetails hd_temp=new HomeStayDetails(homeStayID, BedroomQty, BathRoomQty, LivingRoomQty, KitchenQty, BedQty, checkin, checkout, Price, IncurredCost, description, video);
        Rules r_temp=new Rules(homeStayID, status);
        Extensions e_temp=new Extensions(homeStayID, listextensions);
        
        //
        int n=dao.updateHomeStayStatus(h_temp);
        int m=dao.updateHomeStayDetail(hd_temp);
        int p=dao.updateRules(r_temp);
        int q=dao.updateExtensions(e_temp);
        
        
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
