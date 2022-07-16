/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOVouchers;
import Entity.Marketing;
import Entity.Vouchers;
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
@WebServlet(name = "VoucherManager", urlPatterns = {"/VoucherManager"})
public class VoucherManager extends HttpServlet {

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
        if (service == null) {
            service = "Show";
        }
        DAOVouchers daoV = new DAOVouchers();
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            if ("Show".equals(service)) {
                int count = daoV.counttotalV();
                String pages = request.getParameter("page");

                int size = 5;
                int endPage = count / size;
                if (count % size != 0) {
                    endPage++;
                }
                if (pages == null) {
                    pages = "1";
                }
                int page = Integer.parseInt(pages);
                List<Vouchers> list = daoV.view5PagingVouchers(page);
                request.setAttribute("list", list);
                request.setAttribute("endPage", endPage);
                request.setAttribute("page", pages);
                request.getRequestDispatcher("ListVoucherManager.jsp").forward(request, response);
            }
            if (service.equals("Insert")) {
                String title = request.getParameter("title");
                String description = request.getParameter("description");
                String discount = request.getParameter("discount");
                String quantity = request.getParameter("quantity");
                int discounts = Integer.parseInt(discount);
                int quantitys = Integer.parseInt(quantity);
                //image
                Part part = request.getPart("image");
                String realPart = request.getServletContext().getRealPath("/images");
                String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                part.write(realPart + "/" + filename);
                //voucherid
                String lastId1 = "VCM000";
                if (daoV.lastVoucherId() != null) {
                    lastId1 = daoV.lastVoucherId().substring(0, 6);
                }
                String s1 = lastId1.substring(0, 4);
                String s2 = lastId1.substring(4);
                int numnews = Integer.parseInt(s2) + 1;
                String n = Integer.toString(numnews);
                 if (numnews < 10) {
                        n = "0".concat(n);
                    }
                String newID = s1.concat(n);
                //marketingid
                HttpSession session = request.getSession();
                Marketing mar = (Marketing) session.getAttribute("mar");
                String marketingid = mar.getAccountM();
                Vouchers voucher = new Vouchers(newID, title, description, filename, discounts, quantitys, marketingid);
                daoV.addVouchers(voucher);
                response.sendRedirect("VoucherManager");
            }
            if (service.equals("Delete")) {
                String voucherId = request.getParameter("voucherId");
                int n = daoV.removeVoucher(voucherId);
                response.sendRedirect("VoucherManager");
            }
            if (service.equals("Update")) {
                String submit = request.getParameter("submit");
                String voucherId = request.getParameter("voucherId");
                String id = voucherId;
                if (submit == null) {
                    List<Vouchers> v = daoV.getVoucherbyId(voucherId);
                    request.setAttribute("list", v);
                    request.getRequestDispatcher("UpdateVoucher.jsp").forward(request, response);
                } else {
                    String VoucherId = request.getParameter("VoucherId");
                    String title = request.getParameter("title");
                    String description = request.getParameter("description");
                    String discount = request.getParameter("discount");
                    String quantity = request.getParameter("quantity");
                    int discounts = Integer.parseInt(discount);
                    int quantitys = Integer.parseInt(quantity);
                    //image
                    Part part = request.getPart("image");
                    String realPart = request.getServletContext().getRealPath("/images");
                    String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                    if (filename.isEmpty()) {
                        filename = daoV.getImagebyId(VoucherId);
                        //marketingid
                        HttpSession session = request.getSession();
                        Marketing mar = (Marketing) session.getAttribute("mar");
                        String marketingid = mar.getAccountM();
                        Vouchers voucher = new Vouchers(VoucherId, title, description, filename, discounts, quantitys, marketingid);
                        int n = daoV.updateVoucher(voucher);
                        response.sendRedirect("VoucherManager");
                    } else {
                        part.write(realPart + "/" + filename);
                        //marketingid
                        HttpSession session = request.getSession();
                        Marketing mar = (Marketing) session.getAttribute("mar");
                        String marketingid = mar.getAccountM();
                        Vouchers voucher = new Vouchers(VoucherId, title, description, filename, discounts, quantitys, marketingid);
                        int n = daoV.updateVoucher(voucher);
                        response.sendRedirect("VoucherManager");
                    }
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
