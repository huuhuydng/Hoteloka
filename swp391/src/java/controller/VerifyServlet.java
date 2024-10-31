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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Hotel;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "VerifyServlet", urlPatterns = {"/VerifyServlet"})
public class VerifyServlet extends HttpServlet {

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
            out.println("<title>Servlet VerifyServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VerifyServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        String enteredCode = request.getParameter("verificationCode");
        String sentCode = (String) session.getAttribute("verificationCode");

        if (enteredCode == null || !enteredCode.equals(sentCode)) {
            request.setAttribute("error", "Mã xác nhận không đúng, vui lòng thử lại.");
            request.getRequestDispatcher("verifyCode.jsp").forward(request, response);
            return;
        }
        //list
         String indexPage = request.getParameter("index");
        int index = 1;
        if (indexPage != null && !indexPage.isEmpty()) {
            try {
                index = Integer.parseInt(indexPage);
            } catch (NumberFormatException e) {
            }
        }
        DAO dao0 = new DAO();
        DAO dao1 = new DAO();
        int total = dao0.getTotalHotel();
        int page = total / 16;
        if (total % 16 != 0) {
            page++;
        }
        List<Hotel> hotelList = dao0.pagingHotels(index);
        List<Hotel> randomList = dao1.getRandomHotel();
        System.out.println(randomList);
        request.setAttribute("randomH", randomList);
        request.setAttribute("source", "home");
        request.setAttribute("listH", hotelList);
        request.setAttribute("endP", page);
        request.setAttribute("tag", index);

        // Nếu mã xác nhận đúng, hoàn tất việc đăng ký
        DAO dao = new DAO();
        String email = (String) session.getAttribute("userEmail");
        String pass = (String) session.getAttribute("userPass");
        String fullname = (String) session.getAttribute("userFullname");
        String dob = (String) session.getAttribute("userDob");
        String gender = (String) session.getAttribute("userGender");
        String phone = (String) session.getAttribute("userPhone");

        boolean isRegistered = dao.register(email, pass, fullname, dob, gender, phone);
        if (isRegistered) {
            session.setAttribute("account", dao.check(email, pass));
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Đăng ký không thành công, vui lòng thử lại!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
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
