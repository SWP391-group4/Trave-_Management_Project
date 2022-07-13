/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOExtensions;
import DAO.DAOHomeStayDetails;
import DAO.DAOHomeStays;
import DAO.DAOSupplier;
import Entity.Categories;
import Entity.Extensions;
import Entity.HomeStayDetails;
import Entity.HomeStays;
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
        HttpSession session = request.getSession();
        String accountS = request.getParameter("accountS");
        DAOSupplier daos = new DAOSupplier();
        Suppliers sup = daos.getSuppiler(accountS);
        Suppliers sp = (Suppliers) session.getAttribute("suppliers");
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

        HomeStayDetails hd = daod.getCheckInOut(homestayid);

        Rules r = dao.getRule(homestayid);

        Extensions e = daoe.getExtensions(homestayid);
        List<Categories> listC = dao.ListCate();
        request.setAttribute("listC", listC);
        request.setAttribute("h", h);
        request.setAttribute("r", r);
        request.setAttribute("hd", hd);
        request.setAttribute("e", e);
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
        DAOExtensions daoe = new DAOExtensions();

        List<Categories> listC = dao.ListCate();
        request.setAttribute("listC", listC);
        //get homestayid
        String homeStayID = request.getParameter("homeStayID");
//
//        hd = daod.getCheckInOut(homeStayID);
//        h = dao.getHomestay2(homeStayID);
//        r = dao.getRule(homeStayID);
//        e = daoe.getExtensions(homeStayID);
        /////
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
        String accountS = request.getParameter("accountS");
        HomeStays h = new HomeStays(homeStayID, cateId, Status);
        DAOSupplier daos = new DAOSupplier();
        Suppliers sup = daos.getSuppiler(accountS);
        HomeStayDetails hd = new HomeStayDetails(homeStayID, BedroomQty, BathRoomQty, LivingRoomQty, KitchenQty, BedQty, checkin, checkout, Price, description, IncurredCost, video);
        Rules r = new Rules(homeStayID, listrules);
        Extensions e = new Extensions(homeStayID, listextensions);
        //
        int n = dao.updateHomeStayStatus(h);
        int m = dao.updateHomeStayDetail(hd);
        int p = dao.updateRules(r);
        int q = dao.updateExtensions(e);
        if (n == 0 && m == 0 && p == 0 && q == 0) {
            String alert = "Update fail";
            request.setAttribute("cateId", cateId);
            request.setAttribute("checkin", checkin);
            request.setAttribute("checkout", checkout);
            request.setAttribute("description", description);
            request.setAttribute("bedQty", bedQty);
            request.setAttribute("bedroomQty", bedroomQty);
            request.setAttribute("bathRoomQty", bathRoomQty);
            request.setAttribute("livingRoomQty", livingRoomQty);
            request.setAttribute("kitchenQty", kitchenQty);
            request.setAttribute("price", price);
            request.setAttribute("incurredCost", incurredCost);
            request.setAttribute("status", status);
            request.setAttribute("listextensions", listextensions);
            request.setAttribute("video", video);
            request.setAttribute("listrules", listrules);
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("HomeStayUpdate.jsp").forward(request, response);
        } else {
            String alert = "Update done.";
            request.setAttribute("cateId", cateId);
            request.setAttribute("checkin", checkin);
            request.setAttribute("checkout", checkout);
            request.setAttribute("description", description);
            request.setAttribute("bedQty", bedQty);
            request.setAttribute("bedroomQty", bedroomQty);
            request.setAttribute("bathRoomQty", bathRoomQty);
            request.setAttribute("livingRoomQty", livingRoomQty);
            request.setAttribute("kitchenQty", kitchenQty);
            request.setAttribute("price", price);
            request.setAttribute("incurredCost", incurredCost);
            request.setAttribute("status", status);
            request.setAttribute("listextensions", listextensions);
            request.setAttribute("video", video);
            request.setAttribute("listrules", listrules);
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
