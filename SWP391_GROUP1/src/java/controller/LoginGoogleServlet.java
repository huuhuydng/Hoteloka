/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import util.GoogleLogin;
import dal.DAO;
import util.GoogleAccount;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Random;
import model.User;
import util.Email;

/**
 *
 * @author HP
 */
@WebServlet(name = "LoginGoogleServlet", urlPatterns = {"/login"})
public class LoginGoogleServlet extends HttpServlet {

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

        String code = request.getParameter("code");
        String error = request.getParameter("error");

        // Nếu người dùng từ chối quyền truy cập
        if (error != null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        GoogleLogin gg = new GoogleLogin();
        String accessToken = gg.getToken(code);
        GoogleAccount googleAccount = gg.getUserInfo(accessToken);

        // Ghi log để kiểm tra thông tin Google Account
        System.out.println("Google Account Email: " + googleAccount.getEmail());

        // Tạo đối tượng User
        User acc = new User();
        HttpSession session = request.getSession();
        acc.setAcc_email(googleAccount.getEmail());
        acc.setAcc_fullname(googleAccount.getName());
        String pass = "123456789";
        String dob = "2000-01-01";
        String gender = "Unknow";
        String phone = "0833100904";

        acc.setAcc_password(pass);
        acc.setAcc_dob(dob);
        acc.setAcc_gender(gender);
        acc.setAcc_phone(phone);

        // Kiểm tra xem email đã tồn tại trong cơ sở dữ liệu chưa
        DAO dao = new DAO();

        session.setAttribute("account", acc);
        if (dao.isEmailExists(acc.getAcc_email())) {
            // Nếu email đã tồn tại, chuyển hướng về trang home
            System.out.println("Email exists, redirecting to home");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else {
            // Nếu email chưa tồn tại, lưu tài khoản vào database
            boolean accountSaved = dao.saveGoogleAccount(acc.getAcc_email(), acc.getAcc_password(), acc.getAcc_fullname(), acc.getAcc_dob(), acc.getAcc_gender(), acc.getAcc_phone());
            if (accountSaved) {
                // Gửi email mã xác nhận
                Email.senEmail(acc.getAcc_email(), "Mã mật khẩu tài khoản Hoteloka", "Mật khẩu tài khoản Hoteloka của bạn là: " + pass 
                        + "\nBạn nên thay đổi mật khẩu để bảo toàn thông tin cá nhân!");

                System.out.println("Account saved");
                request.getRequestDispatcher("home").forward(request, response);
            } else {
                System.out.println("Account not saved, redirecting to login");
                request.getRequestDispatcher("login.jsp").forward(request, response);
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
