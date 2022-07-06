/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOImages;
import DAO.DAOSupplier;
import Entity.SupplierAddresses;
import Entity.SupplierImage;
import Entity.Suppliers;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
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
 * @author thinh
 */
@WebServlet(name = "UpdateSuppilerAddressController", urlPatterns = {"/updateaddress"})
@MultipartConfig
public class UpdateSuppilerAddressController extends HttpServlet {

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
        DAOSupplier daosup = new DAOSupplier();
        HttpSession session = request.getSession();
        SupplierAddresses spa = (SupplierAddresses) session.getAttribute("suppliersAddress");
        String accountS = spa.getAccountS();
        SupplierImage Simg = daosup.getSUPImage(accountS);
        request.setAttribute("spa", spa);
        request.setAttribute("Simg", Simg);
        request.getRequestDispatcher("UpdateSUPAdress.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        DAOSupplier daosup = new DAOSupplier();

        Part part = request.getPart("image");
        String realPart = request.getServletContext().getRealPath("/images");
        String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
//        part.write(realPart + "/" + filename);
        SupplierAddresses spa = (SupplierAddresses) session.getAttribute("suppliersAddress");
        String accountS = spa.getAccountS();
        String specific = request.getParameter("specific");
        String ward = request.getParameter("ward");
        String district = request.getParameter("district");
        String city = request.getParameter("city");
        SupplierAddresses address_temp = new SupplierAddresses(accountS, city, district, specific, ward);
        int n = daosup.updateSupplierAddress(address_temp);
        String image = filename;
        int m = daosup.updateSUPImage(accountS, image);
        if (!filename.isEmpty()) {
            part.write(realPart + "/" + filename);
            if (n == 0 && m == 0) {
                String noti = "Update fails";
                request.setAttribute("spa", spa);
                request.setAttribute("noti", noti);
                request.setAttribute("Simg", new SupplierImage(accountS, image));
                request.getRequestDispatcher("UpdateSUPAdress.jsp").forward(request, response);
            } else {
                String noti = "Update done.";
                request.setAttribute("spa", address_temp);
                request.setAttribute("noti", noti);
                request.setAttribute("Simg", new SupplierImage(accountS, image));
                request.getRequestDispatcher("UpdateSUPAdress.jsp").forward(request, response);
            }
        }
        else{
             if (n == 0 ) {
                String noti = "Update fails";
                request.setAttribute("spa", spa);
                request.setAttribute("noti", noti);
//                request.setAttribute("Simg", new SupplierImage(accountS, image));
                request.getRequestDispatcher("UpdateSUPAdress.jsp").forward(request, response);
            } else {
                String noti = "Update done.";
                request.setAttribute("spa", address_temp);
                request.setAttribute("noti", noti);
//                request.setAttribute("Simg", new SupplierImage(accountS, image));
                request.getRequestDispatcher("UpdateSUPAdress.jsp").forward(request, response);
            }
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
