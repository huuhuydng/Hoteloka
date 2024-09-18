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
import java.util.Random;
import model.User;
import util.Email;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

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
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
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
    private String generateVerificationCode() {
        Random random = new Random();
        int code = random.nextInt(999999); // Tạo mã 6 chữ số
        return String.format("%06d", code); // Đảm bảo mã có đủ 6 chữ số
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("acc_email");
        String pass = request.getParameter("acc_password");
        String confirmPass = request.getParameter("confirmPass");
        String dob = request.getParameter("acc_dob");
        String name = request.getParameter("acc_fullname");
        String gender = request.getParameter("acc_gender");
        String phone = request.getParameter("acc_phone");

        DAO dao = new DAO();
        // Validate the inputs
        if (email == null || pass == null || confirmPass == null || !pass.equals(confirmPass)) {
            request.setAttribute("error", "Mật khẩu không khớp, vui lòng nhập lại!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        if (dao.isEmailExists(email)) {
            request.setAttribute("error", "Email này đã được đăng ký, vui lòng chọn Email khác");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        String verificationCode = generateVerificationCode();

        boolean emailSent = Email.senEmail(email, "Mã xác nhận đăng ký tài khoản Hoteloka",
                "Mã xác nhận của bạn là: " + verificationCode);

        if (!emailSent) {
            request.setAttribute("error", "Không thể gửi email, vui lòng thử lại!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (pass.contains(" ")) {
            request.setAttribute("error", "Mật khẩu không được chứa khoảng trắng");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("verificationCode", verificationCode);
            session.setAttribute("userEmail", email);
            session.setAttribute("userPass", pass);
            session.setAttribute("userDob", dob);
            session.setAttribute("userFullname", name);
            session.setAttribute("userGender", gender);
            session.setAttribute("userPhone", phone);

            // Chuyển hướng người dùng tới trang nhập mã xác nhận
            request.getRequestDispatcher("verifyCode.jsp").forward(request, response);
        }

        // Create a new user
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
