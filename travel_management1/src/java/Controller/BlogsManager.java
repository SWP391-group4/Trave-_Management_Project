/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBlogDetails;
import DAO.DAOBlogs;
import Entity.Blogs;
import Entity.Marketing;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.ServletException;
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
        response.setContentType("text/html;charset=UTF-8");
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
                String title = request.getParameter("title");
                String new1 = request.getParameter("new1");
                String new2 = request.getParameter("new2");
                String new3 = request.getParameter("new3");
                String new4 = request.getParameter("new4");
                String new5 = request.getParameter("new5");
                //image main
                Part part = request.getPart("image");
                String realPart = request.getServletContext().getRealPath("/images");
                String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                part.write(realPart + "/" + filename);
                //image 1
                Part part1 = request.getPart("image1");
                String filename1 = Paths.get(part1.getSubmittedFileName()).getFileName().toString();
                part.write(realPart + "/" + filename1);
                //image 2
                Part part2 = request.getPart("image2");
                String filename2 = Paths.get(part2.getSubmittedFileName()).getFileName().toString();
                if(filename2.isEmpty()){
                   filename2="h";
                }else{
                part.write(realPart + "/" + filename2);
                }
                //image 3
                Part part3 = request.getPart("image3");
                String filename3 = Paths.get(part3.getSubmittedFileName()).getFileName().toString();
                if(filename3.isEmpty()){
                   filename3="h";
                }else{
                part.write(realPart + "/" + filename3);
                }
                //image 4
                Part part4 = request.getPart("image4");
                String filename4 = Paths.get(part4.getSubmittedFileName()).getFileName().toString();
                if(filename4.isEmpty()){
                   filename4="h";
                }else{
                part.write(realPart + "/" + filename4);
                }
                //image 5
                Part part5 = request.getPart("image5");
                String filename5 = Paths.get(part5.getSubmittedFileName()).getFileName().toString();
                if(filename5.isEmpty()){
                   filename5="h";
                }else{
                part.write(realPart + "/" + filename5);
                }
                
                //blogid
                String lastId1 = daoB.lastblogIḌ().substring(0, 6);
                String s1 = lastId1.substring(0, 5);
                String s2 = lastId1.substring(4);
                int numnews = Integer.parseInt(s2) + 1;
                String n = Integer.toString(numnews);
                String newID = s1.concat(n);
                
                //blogdetailid
                String lastId1d = daoBD.lastblogdetailIḌ().substring(0, 7);
                String s1d = lastId1d.substring(0, 5);
                String s2d = lastId1d.substring(4);
                int numnewsd = Integer.parseInt(s2d) + 1;
                String nd = Integer.toString(numnewsd);
                String newIDd = s1.concat(nd);
                //marketingid
                HttpSession session = request.getSession();
                Marketing mar = (Marketing) session.getAttribute("mar");
                String marketingid = mar.getAccountM();
                Blogs blogs = new Blogs(newID, title,filename, marketingid);
                daoB.addBlogs(blogs);
                response.sendRedirect("BlogsManager");
            }
            if (service.equals("update")) {
                response.sendRedirect("UpdateBlogs.jsp");
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
