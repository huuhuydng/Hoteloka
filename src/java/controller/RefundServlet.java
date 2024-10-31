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
import model.Booking;
import model.User;

/**
 *
 * @author hadi
 */
@WebServlet(name = "RefundServlet", urlPatterns = {"/refund"})
public class RefundServlet extends HttpServlet {

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
        String idBooking = request.getParameter("booking_id");
        Booking b = new DAO().getBookingByID(idBooking);
        User a = new DAO().getUserByBookingID(idBooking);
        request.setAttribute("booking", b);
        request.setAttribute("user", a);
        request.setAttribute("idBooking", idBooking);
        request.getRequestDispatcher("refundInfo.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
         HttpSession session = request.getSession();
        String accId = request.getParameter("cusId");
        String bookingId = request.getParameter("orderNumber");
        String bankId = request.getParameter("bankAccount");
        String bankName = request.getParameter("bankName");
        String refundAmount = request.getParameter("amount"); 
        String refundReason = request.getParameter("reason");

        if ("other".equals(bankName)) {
            bankName = request.getParameter("otherBankName");
        }
        new DAO().addRefund(accId, bookingId, bankId, bankName, refundAmount, refundReason);
        new DAO().updateBookingStatus(bookingId, "refund");
        session.setAttribute("refundSuccess", true);
        response.sendRedirect("home");
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
