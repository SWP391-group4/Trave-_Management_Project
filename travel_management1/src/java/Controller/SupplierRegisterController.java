package Controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import DAO.DAOSupplierTemp;
import Entity.Accounts;
import Entity.SupplierAddresses;
import Entity.Suppliers;
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
 * @author phams
 */
@WebServlet(urlPatterns = {"/SupplierRegister"})
public class SupplierRegisterController extends HttpServlet {

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
        response.sendRedirect("RegisterSupplier.jsp");
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

        DAOSupplierTemp daoTemp = new DAOSupplierTemp();

        Accounts account = (Accounts) request.getSession().getAttribute("acc");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String fax = request.getParameter("fax");

        Suppliers sup = new Suppliers(account.getAccount(), firstName, lastName, fax, email, phone);

        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");
        String specific = request.getParameter("specific");
        SupplierAddresses supAddress = new SupplierAddresses(account.getAccount(), city, district, specific, ward);

        String preview = request.getParameter("preview");
        if (preview == null) {
            int n = daoTemp.addSupplier(sup);
            int m = daoTemp.addSupplierAddress(supAddress);
            if (m != 0 && n != 0) {
                String alert = "Register done.";
                request.setAttribute("alert", alert);
                request.getRequestDispatcher("RegisterSupplier.jsp").forward(request, response);
            }
        } else {
            System.out.println(sup);
            System.out.println(supAddress);
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("phone", phone);
            request.setAttribute("email", email);
            request.setAttribute("fax", fax);

            request.setAttribute("city", city);
            request.setAttribute("district", district);
            request.setAttribute("ward", ward);
            request.setAttribute("specific", specific);

            request.getRequestDispatcher("RegisterSupplier.jsp").forward(request, response);
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
