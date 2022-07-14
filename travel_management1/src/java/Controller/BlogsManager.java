/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBlogDetails;
import DAO.DAOBlogs;
import Entity.BlogDetails;
import Entity.Blogs;
import Entity.Marketing;
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
@WebServlet(name = "BlogsManager", urlPatterns = {"/BlogsManager"})
public class BlogsManager extends HttpServlet {

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
        DAOBlogs daoB = new DAOBlogs();
        DAOBlogDetails daoBD = new DAOBlogDetails();
        try ( PrintWriter out = response.getWriter()) {
            if ("Show".equals(service)) {
                int count = daoB.counttotalB();
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
                List<Blogs> list = daoB.view5PagingBlogses(page);
                request.setAttribute("list", list);
                request.setAttribute("endPage", endPage);
                request.setAttribute("page", pages);
                request.getRequestDispatcher("ListBlogManager.jsp").forward(request, response);
            }
            if (service.equals("Insert")) {
                String submit = request.getParameter("submit");
                if (submit == null) {
                    response.sendRedirect("InsertBlogs.jsp");
                } else {
                    String title = request.getParameter("title");
                    String new1 = request.getParameter("new1");
                    String new2 = request.getParameter("new2");
                    //image main
                    Part part = request.getPart("image");
                    String realPart = request.getServletContext().getRealPath("/images");
                    String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                    part.write(realPart + "/" + filename);
                    //image 1
                    Part part1 = request.getPart("image1");
                    String filename1 = Paths.get(part1.getSubmittedFileName()).getFileName().toString();
                    part1.write(realPart + "/" + filename1);
                    //image 2
                    Part part2 = request.getPart("image2");
                    String filename2 = Paths.get(part2.getSubmittedFileName()).getFileName().toString();
                    
                    //blogid
                    String lastId1 = daoB.lastblogIḌ().substring(0, 6);
                    String s1 = lastId1.substring(0, 4);
                    String s2 = lastId1.substring(4);
                    int numnews = Integer.parseInt(s2) + 1;
                    String n = Integer.toString(numnews);
                    String newID = s1.concat(n);
                    //blogdetailid
                    String lastId1d1 = daoBD.lastblogdetailIḌ().substring(0, 7);
                    String s1d1 = lastId1d1.substring(0, 5);
                    String s2d1 = lastId1d1.substring(5);
                    int numnewsd1 = Integer.parseInt(s2d1) + 1;
                    String nd1 = Integer.toString(numnewsd1);
                    String newIDd1 = s1d1.concat(nd1);
                    //marketingid
                    HttpSession session = request.getSession();
                    Marketing mar = (Marketing) session.getAttribute("mar");
                    String marketingid = mar.getAccountM();
                    Blogs blogs = new Blogs(newID,filename, title, marketingid);
                    daoB.addBlogs(blogs);
                    BlogDetails blogd1 = new BlogDetails(newIDd1, filename1, new1, newID);
                    daoBD.addBlogDetails(blogd1);
                    if (new2 != null && filename2 != null) {
                        //blogdetailid
                        part2.write(realPart + "/" + filename2);
                        String lastId1d2 = daoBD.lastblogdetailIḌ().substring(0, 7);
                        String s1d2 = lastId1d2.substring(0, 5);
                        String s2d2 = lastId1d2.substring(5);
                        int numnewsd2 = Integer.parseInt(s2d2) + 1;
                        String nd2 = Integer.toString(numnewsd2);
                        String newIDd2 = s1d2.concat(nd2);
                        BlogDetails blogd2 = new BlogDetails(newIDd2, filename2, new2, newID);
                        daoBD.addBlogDetails(blogd2);
                        response.sendRedirect("BlogsManager");
                    } else {
                        response.sendRedirect("BlogsManager");
                    }
                }
            }
            if (service.equals("update")) {
                String submit = request.getParameter("submit");
                String blogId = request.getParameter("blogId");
                if (submit == null) {
                    List<Blogs> v = daoB.viewBlogsDetail(blogId);
                    request.setAttribute("list", v);
                    request.getRequestDispatcher("UpdateBlogs.jsp").forward(request, response);
                } else {
                    String BlogId = request.getParameter("BlogId");
                    String title = request.getParameter("title");
                    String news = request.getParameter("news");
                    //image
                    Part part = request.getPart("image");
                    String realPart = request.getServletContext().getRealPath("/images");
                    String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                    //image
                    Part part1 = request.getPart("image1");
                    String filename1 = Paths.get(part1.getSubmittedFileName()).getFileName().toString();
                    if (filename.isEmpty()) {
                        filename = daoB.viewBlogsDetail(BlogId).get(2).getImage();
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
            if (service.equals("Delete")) {
                String blogId = request.getParameter("blogId");
                int m = daoBD.removeBlogDetails(blogId);
                int n = daoB.removeBlogs(blogId);
                response.sendRedirect("BlogsManager");
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
