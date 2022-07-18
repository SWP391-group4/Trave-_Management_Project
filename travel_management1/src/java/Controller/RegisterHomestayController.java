/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.*;
import Entity.*;
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
@MultipartConfig
/**
 *
 * @author phams
 */
@WebServlet(name = "RegisterHomestayController", urlPatterns = {"/RegisterHomestay"})
public class RegisterHomestayController extends HttpServlet {

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
        DAOCategories daoCat = new DAOCategories();

        List<Categories> listCat = daoCat.ListCate();
        request.setAttribute("category", listCat);
        request.getRequestDispatcher("RegisterHomestay.jsp").forward(request, response);
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
        DAOHomeStays daoHomestay = new DAOHomeStays();
        DAOHomeStayAddresses daoAddress = new DAOHomeStayAddresses();
        DAOHomeStayDetails daoDetail = new DAOHomeStayDetails();
        DAOExtensions daoEx = new DAOExtensions();
        DAORules daoRule = new DAORules();
        DAOImages daoImage = new DAOImages();

        String homestayId = daoHomestay.getIdAuto();
        String homestayName = request.getParameter("homestayName");
        String cateId = request.getParameter("category");
        String accountS = ((Accounts) request.getSession().getAttribute("acc")).getAccount();
        int status = 2;

        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String specific = request.getParameter("specific");
        String ward = request.getParameter("ward");

        int bedroom = Integer.parseInt(request.getParameter("bedroom"));
        int bed = Integer.parseInt(request.getParameter("bed"));
        int livingroom = Integer.parseInt(request.getParameter("livingroom"));
        int kitchen = Integer.parseInt(request.getParameter("kitchen"));
        int bathroom = Integer.parseInt(request.getParameter("bathroom"));
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        double incurredCost = Double.parseDouble(request.getParameter("incurredCost"));

        String[] extensionsList = request.getParameterValues("extensions");
        String extension = request.getParameter("extention");

        String extensions = daoEx.getExtention(extensionsList);
        if (extension != null) {
            extensions += extension;
        }

        String rule = request.getParameter("rule");

        //-------------------------Image---------------------
        String realPart = request.getServletContext().getRealPath("/images");

        Part partFirst = request.getPart("imageFirst");
        String filenameFirst = Paths.get(partFirst.getSubmittedFileName()).getFileName().toString();

        Part partSecond = request.getPart("imageSecond");
        String filenameSecond = Paths.get(partSecond.getSubmittedFileName()).getFileName().toString();

        Part partThird = request.getPart("imageThird");
        String filenameThird = Paths.get(partThird.getSubmittedFileName()).getFileName().toString();

        String imageFirst;
        String imageSecond;
        String imageThird;
        if (!filenameFirst.isEmpty()) {
            partFirst.write(realPart + "/" + filenameFirst);
            imageFirst = filenameFirst;

        } else {
            imageFirst = "image_icon.png";
        }

        if (!filenameSecond.isEmpty()) {
            partSecond.write(realPart + "/" + filenameSecond);
            imageSecond = filenameSecond;

        } else {
            imageSecond = "image_icon.png";
        }

        if (!filenameThird.isEmpty()) {
            partThird.write(realPart + "/" + filenameThird);
            imageThird = filenameThird;

        } else {
            imageThird = "image_icon.png";
        }

        //---------------------------------------------------
        int addHomeStay = daoHomestay.addHomeStays(new HomeStays(homestayId, homestayName, cateId, accountS, status));
        int addAddress = daoAddress.addHomeStayAddresses(new HomeStayAddressses(homestayId, city, district, specific, ward));
        int addDetail = daoDetail.addHomeStayDetails(new HomeStayDetails(homestayId, bedroom, bathroom, livingroom, kitchen, bed, checkin, checkout, price, description, incurredCost, rule));
        int addExtension = daoEx.addExtensions(new Extensions(homestayId, extensions));
        int addRules = daoRule.addRules(new Rules(homestayId, rule));

        //------
        int addFirst = daoImage.addHomeStayImage(new Images(imageFirst, homestayId));
        int addSecond = daoImage.addHomeStayImage(new Images(imageSecond, homestayId));
        int addThird = daoImage.addHomeStayImage(new Images(imageThird, homestayId));

        if (addHomeStay != 0 && addAddress != 0 && addDetail != 0 && addExtension != 0 && addRules != 0
                && addFirst != 0 && addSecond != 0 && addThird != 0) {
            String alert = "Register success";
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("RegisterHomestay").forward(request, response);
        } else {
            String alert = "Something went wrong";
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("RegisterHomestay").forward(request, response);
        }
        //------
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
