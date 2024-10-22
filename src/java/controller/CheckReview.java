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

/**
 *
 * @author hadi
 */
@WebServlet(name = "CheckReview", urlPatterns = {"/CheckReview"})
public class CheckReview extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accId = request.getParameter("accId");
        String hotelId = request.getParameter("hotelId");
        System.out.println("accid" + accId + "hotelid" + hotelId);
        // Kiểm tra trong cơ sở dữ liệu xem có booking nào thỏa mãn điều kiện không
        boolean canReview = new DAO().checkBooking(accId, hotelId);
        boolean hasReview = new DAO().checkReviews(accId, hotelId);
        System.out.println(canReview);
        System.out.println(hasReview);
        response.setContentType("application/json");
        response.getWriter().write("{\"canReview\": " + canReview + ", \"hasReview\": " + hasReview + "}");
    }

   

}
