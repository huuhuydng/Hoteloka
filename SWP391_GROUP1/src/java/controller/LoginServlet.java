/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Hotel;
import model.User;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //phần home
        String indexPage = request.getParameter("index");
        int index = 1;
        if (indexPage != null && !indexPage.isEmpty()) {
            try {
                index = Integer.parseInt(indexPage);
            } catch (NumberFormatException e) {
            }
        }

        DAO dao = new DAO();
        DAO dao1 = new DAO();
        int total = dao.getTotalHotel();
        int page = total / 16;
        if (total % 16 != 0) {
            page++;
        }
        List<Hotel> hotelList = dao.pagingHotels(index);
        List<Hotel> randomList = dao1.getRandomHotel();
        

        //
        String u = request.getParameter("acc_email");
        String p = request.getParameter("acc_password");
        String r = request.getParameter("rem");

        // Validate the inputs
        if (u == null || p == null) {
            request.setAttribute("error", "Username or Password cannot be empty!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Create cookies
        Cookie cu = new Cookie("acc_email", u);
        Cookie cp = new Cookie("acc_password", p);
        Cookie cr = new Cookie("crem", r);

        if (r != null) {
            cu.setMaxAge(60 * 60 * 24 * 7);//7 ngay
            cp.setMaxAge(60 * 60 * 24 * 7);//7 ngay
            cr.setMaxAge(60 * 60 * 24 * 7);//7 ngay
        } else {
            cu.setMaxAge(0);
            cp.setMaxAge(0);
            cr.setMaxAge(0);
        }

        response.addCookie(cu);
        response.addCookie(cp);
        response.addCookie(cr);

        // Check user credentials
        DAO d = new DAO();
        User a = d.check(u, p);
        HttpSession session = request.getSession();

        if (a == null) {
            request.setAttribute("error", "Username or Password invalid!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            session.setAttribute("accID", a.getAcc_id());
            session.setAttribute("account", a);
            request.setAttribute("randomH", randomList);
            request.setAttribute("listH", hotelList);
            request.setAttribute("endP", page);
            request.setAttribute("tag", index);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
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
