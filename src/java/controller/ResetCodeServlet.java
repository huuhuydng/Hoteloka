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
import java.util.Random;
import util.Email;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "ResetCodeServlet", urlPatterns = {"/ResetCodeServlet"})
public class ResetCodeServlet extends HttpServlet {

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
            out.println("<title>Servlet ResetCodeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ResetCodeServlet at " + request.getContextPath() + "</h1>");
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
    private String generateVerifyCode() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999); // Tạo một mã 6 chữ số
        return String.format("%06d", number);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("acc_email");

        DAO dao = new DAO();

        // Kiểm tra email có tồn tại trong hệ thống không
        if (!dao.isEmailExists(email)) {
            request.setAttribute("error", "Email không tồn tại trong hệ thống.");
            request.getRequestDispatcher("forgot.jsp").forward(request, response);
            return;
        }

        // Tạo mã xác nhận
        String verifyCode = generateVerifyCode();

        // Lưu mã xác nhận vào session
        HttpSession session = request.getSession();
        session.setAttribute("resetVerifyCode", verifyCode);
        session.setAttribute("resetEmail", email);

        // Gửi email mã xác nhận
        Email.senEmail(email, "Mã xác nhận thay đổi mật khẩu tài khoản Hoteloka", "Mã xác nhận của bạn là: " + verifyCode);

        // Chuyển đến trang nhập mã xác nhận
        request.getRequestDispatcher("verifyReset.jsp").forward(request, response);

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
