/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBooking;
import DAO.DAOHomeStays;
import DAO.DAOVoucherCustomer;
import DAO.DAOsendEmailBooking;
import Entity.Booking;
import Entity.Customers;
import Entity.HomeStays;
import Entity.User;
import Entity.VoucherCustomer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
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
@WebServlet(name = "BookingController", urlPatterns = {"/bookingController"})
public class BookingController extends HttpServlet {

    DAOVoucherCustomer daov = new DAOVoucherCustomer();
    DAOBooking daob = new DAOBooking();

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
        try ( PrintWriter out = response.getWriter()) {
            String submit = request.getParameter("submit");
            DAOHomeStays dao = new DAOHomeStays();
            HttpSession session = request.getSession();
            Customers cus = (Customers) session.getAttribute("customer");
            String cusid = cus.getAccountC();
            if (submit == null) {
                String homeStayId = request.getParameter("homeStayId");
                HomeStays h = dao.getHomestay(homeStayId);
                List<VoucherCustomer> voucher = daov.getVoucherbyId(cusid);
                double discount = 0.0;
                request.setAttribute("discount", discount);
                request.setAttribute("detail", h);
                request.setAttribute("voucher", voucher);
                request.getRequestDispatcher("Booking.jsp").forward(request, response);
            }
            if ("add".equals(submit)) {
                List<VoucherCustomer> voucher = daov.getVoucherbyId(cusid);
                String homeStayId = request.getParameter("homestayid");
                String v = request.getParameter("voucherid");
                String check = null;
                Double discount = 0.0;
                if (v.equals(".")) {
                    discount = 0.0;
                } else {
                    List<VoucherCustomer> list = daov.getVoucherbyVId(v);
                    check = list.get(0).getVoucherId();
                    String d = String.valueOf(list.get(0).getDiscount());
                    String neww = "0";
                    if (list.get(0).getDiscount() < 10) {
                        neww = "0.0".concat(d);
                    }
                    if (list.get(0).getDiscount() == 100) {
                        neww = "1";
                    }
                    if (list.get(0).getDiscount() >= 10 && list.get(0).getDiscount() <= 99) {
                        neww = "0.".concat(d);
                    }
                    discount = Double.valueOf(neww);
                }
                HomeStays h = dao.getHomestay(homeStayId);

                request.setAttribute("discount", discount);
                request.setAttribute("detail", h);
                request.setAttribute("check", check);
                request.setAttribute("voucher", voucher);
                request.getRequestDispatcher("Booking.jsp").forward(request, response);
            }
            if ("book".equals(submit)) {
                String homeStayId = request.getParameter("homestayid");
                String voucherId = request.getParameter("voucherid");
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String startdate = request.getParameter("startdate");
                String rent = request.getParameter("rent");
                String total = request.getParameter("total");
                String numvisitor = request.getParameter("numvisitor");
                int Rent = Integer.parseInt(rent);
                double Total = Double.valueOf(total);
                int Numvisitor = Integer.parseInt(numvisitor);
                if (!voucherId.isEmpty()) {
                    daov.removeVoucherCus(voucherId);
                }
                int od = daob.countordernumber(homeStayId);
                int ordernumber = 0;
                if (od == 0) {
                    ordernumber = 1;
                } else {
                    ordernumber = daob.getLastOrdernum(homeStayId) + 1;
                }
                int n = daob.addBooking(new Booking(cusid, homeStayId, ordernumber, firstname, lastname, cus.getPhone(), startdate, Rent, Numvisitor, Total * Rent, 0, cus.getEmail()));
                daob.updateHomeStaysStatus(homeStayId);
                String email = request.getParameter("email");
                DAOsendEmailBooking sm = new DAOsendEmailBooking();
                //get the 6-digit code
                HomeStays h = dao.getHomestay(homeStayId);
                String vetify = "Thanks for using CTU Travel service. The supplier will contact you shortly !"
                        + "\n    Booking Information: "
                        + "\n     +Full Name: " + lastname + " " + firstname
                        + "\n     +Phone Number: " + cus.getPhone()
                        + "\n     +Homestay: " + h.getHomeStayname()
                        + "\n     +Address: " + h.getSpecific() + ", " + h.getWard() + ", " + h.getCity()
                        + "\n     +Start Date: " + startdate
                        + "\n     +Total Bill: " + Total * Rent + "VND";
                String v1 = "Thanks for using CTU Travel service. The supplier will contact you shortly !";
                String v2 = "  Booking Information: ";
                String v3 = "  Full Name: " + lastname + " " + firstname;
                String v4 = "  Phone Number: " + cus.getPhone();
                String v5 = "  Homestay: " + h.getHomeStayname();
                String v6 = "  Address: " + h.getSpecific() + ", " + h.getWard() + ", " + h.getCity();
                String v7 = "  Start Date: " + startdate;
                String v8 = "  Total Bill: " + Total * Rent + "VND";
                //craete new user using all information
                User user = new User(cus.getEmail(), vetify);

                //call the send email method
                boolean test = sm.sendEmail(user);
                request.setAttribute("v1", v1);
                request.setAttribute("v2", v2);
                request.setAttribute("v3", v3);
                request.setAttribute("v4", v4);
                request.setAttribute("v5", v5);
                request.setAttribute("v6", v6);
                request.setAttribute("v7", v7);
                request.setAttribute("v8", v8);
                request.getRequestDispatcher("Bookinginformation.jsp").forward(request, response);
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
