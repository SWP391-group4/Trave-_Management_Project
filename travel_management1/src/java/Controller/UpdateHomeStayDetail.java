/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOExtensions;
import DAO.DAOHomeStayDetails;
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
@WebServlet(name = "UpdateHomeStayDetail", urlPatterns = {"/updatehomestay"})
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
        DAOHomeStayDetails daod = new DAOHomeStayDetails();
        DAOExtensions daoe = new DAOExtensions();
        HttpSession session = request.getSession();
        String homestayid = request.getParameter("homeStayID");
        HomeStays h = dao.getHomestay2(homestayid);

        HomeStayDetails hd = (HomeStayDetails) session.getAttribute("homestaydetails");
        hd = daod.getCheckInOut(homestayid);
        Rules r = (Rules) session.getAttribute("rules");
        r = dao.getRule(homestayid);
        Extensions e = (Extensions) session.getAttribute("extensions");
        e = daoe.getExtensions(homestayid);
        List<Categories> listC = dao.ListCate();
        request.setAttribute("listC", listC);
        request.setAttribute("h", h);
        request.setAttribute("r", r);
        request.setAttribute("hd", hd);
        request.setAttribute("e", e);
        System.out.println(h);
        request.getRequestDispatcher("HomeStayUpdate.jsp").forward(request, response);
    }
///Tam Dung o CHECKIN

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
        DAOHomeStayDetails daod = new DAOHomeStayDetails();
        HttpSession session = request.getSession();
        HomeStays h = (HomeStays) session.getAttribute("HomeStays");
        HomeStayDetails hd = (HomeStayDetails) session.getAttribute("HomeStayDetails");
        Rules r = (Rules) session.getAttribute("Rules");
        Extensions e = (Extensions) session.getAttribute("Extensions");
        //get homestayid
        String homeStayID = request.getParameter("homeStayID");
        String homeStayName = request.getParameter("homeStayName");
        String cateId = request.getParameter("catid");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        String description = request.getParameter("description");
        String bedQty = request.getParameter("bedQty");
        String bedroomQty = request.getParameter("bedroomQty");
        String bathRoomQty = request.getParameter("bathRoomQty");
        String livingRoomQty = request.getParameter("livingRoomQty");
        String kitchenQty = request.getParameter("kitchenQty");
        String price = request.getParameter("price");
        String incurredCost = request.getParameter("incurredCost");
        String status = request.getParameter("status");
        String listextensions = request.getParameter("listextensions");
        String video = request.getParameter("video");
        String listrules = request.getParameter("listrules");
        int Status = Integer.parseInt(status);
        double Price = Double.parseDouble(price);
        int BedQty = Integer.parseInt(bedQty);
        int BedroomQty = Integer.parseInt(bedroomQty);
        int BathRoomQty = Integer.parseInt(bathRoomQty);
        int LivingRoomQty = Integer.parseInt(livingRoomQty);
        int KitchenQty = Integer.parseInt(kitchenQty);
        double IncurredCost = Double.parseDouble(incurredCost);
        //////GetTemp
        HomeStays h_temp = new HomeStays(homeStayID, homeStayName, cateId, Status);
        HomeStayDetails hd_temp = new HomeStayDetails(homeStayID, BedroomQty, BathRoomQty, LivingRoomQty, KitchenQty, BedQty, checkin, checkout, Price, description, IncurredCost, video);
        Rules r_temp = new Rules(homeStayID, listrules);
        Extensions e_temp = new Extensions(homeStayID, listextensions);
        //
        int n = dao.updateHomeStayStatus(h_temp);
        int m = dao.updateHomeStayDetail(hd_temp);
        int p = dao.updateRules(r_temp);
        int q = dao.updateExtensions(e_temp);
        if (n == 0 && m == 0 && p == 0 && q == 0) {
            String alert = "Update fail";
            request.setAttribute("h", h);
            request.setAttribute("hd", hd);
            request.setAttribute("r", r);
            request.setAttribute("e", e);
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("HomeStayUpdate.jsp").forward(request, response);
        } else {
            String alert = "Update done.";
            request.setAttribute("h", h_temp);
            request.setAttribute("hd", hd_temp);
            request.setAttribute("r", r_temp);
            request.setAttribute("e", e_temp);
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("HomeStayUpdate.jsp").forward(request, response);
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
