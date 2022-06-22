/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOMarketing;
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
        DAOMarketing dao = new DAOMarketing();
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
                    HttpSession session = request.getSession();
                    Marketing mar = (Marketing) session.getAttribute("mar");
                    // tim cach dung thang vao jsp
                    request.setAttribute("mar", mar);
                    request.getRequestDispatcher("MarketingProfile.jsp").forward(request, response);
                } else {
                    HttpSession session = request.getSession();
                    Marketing mar = (Marketing) session.getAttribute("mar");
                    String accountM = mar.getAccountM();
                    String firstName = request.getParameter("fname");
                    String lastName = request.getParameter("lname");
                    String age = request.getParameter("age");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    int Age = Integer.parseInt(age);
                    //insert
                    Marketing mar1 = new Marketing(accountM, firstName, lastName, Age, email, phone);
                    int n = dao.updateMarketing(mar1);
                    if (n == 0 ) {
                        String noti = "Update fails";
                        request.setAttribute("mar", mar1);
                        if (submit!=""||submit!=null||!submit.isEmpty()) {
                        request.setAttribute("noti", noti);
                        }
                        request.getRequestDispatcher("MarketingProfile.jsp").forward(request, response);
                    } else {
                        String noti = "Update done.";
                        request.setAttribute("mar", mar1);
                        if (submit!=""||submit!=null||!submit.isEmpty()) {
                        request.setAttribute("noti", noti);
                        }
                        request.getRequestDispatcher("MarketingProfile.jsp").forward(request, response);
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
