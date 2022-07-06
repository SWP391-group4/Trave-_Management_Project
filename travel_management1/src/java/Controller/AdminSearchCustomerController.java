/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCustomers;
import Entity.Customers;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author phams
 */
@WebServlet(name = "AdminSearchCustomerController", urlPatterns = {"/AdminSearchCustomer"})
public class AdminSearchCustomerController extends HttpServlet {

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
        DAOCustomers daoCus = new DAOCustomers();

        String indexPage = request.getParameter("index");
        String str = request.getParameter("search");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        int count = daoCus.totalUser(str);
        int endPage = count / 5;
        if (count % 5 != 0) {
            endPage++;
        }
        //-----------------------
        String accountC = request.getParameter("accountC");
        if (accountC != null) {
            Customers cus = daoCus.getCustomer(accountC);
            String image = daoCus.getImage(accountC).getImg_Avatar();
            request.setAttribute("cus", cus);
            request.setAttribute("image", image);
        }
        //-----------------------
        String status = request.getParameter("status");
        if (status != null) {
            if (status.equals("1")) {
                daoCus.updateCustomerStatus(0, accountC);
            } else {
                daoCus.updateCustomerStatus(1, accountC);
            }
        }
        //-----------------------
        List<Customers> listCus = daoCus.pagging(index,str);
        System.out.println(index);
        System.out.println(listCus.size());
        request.setAttribute("endPage", endPage);
        request.setAttribute("list", listCus);
        request.setAttribute("tag", index);
        request.getRequestDispatcher("/AdminManageCustomerList.jsp").forward(request, response);

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
