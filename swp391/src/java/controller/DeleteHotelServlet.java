/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dto.HotelDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "DeleteHotelServlet", urlPatterns = {"/deleteHotel"})
public class DeleteHotelServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        HotelDTO h = (HotelDTO) session.getAttribute("hotel");

        if (h == null) {
            request.setAttribute("error", "Bạn chưa có Hotel nào!");
            request.getRequestDispatcher("partnerInfo.jsp").forward(request, response);
        }

        if (h != null) {
            DAO dao = new DAO();
            boolean deleted = dao.deleteHotelU(h.getHotel_id());
            String accId = (String) session.getAttribute("accID");
            new DAO().updateRole(accId, "2");
            User acc = new DAO().getUserByID(accId);
            System.out.println(acc);
            session.setAttribute("account", acc);
            if (deleted) {
                request.setAttribute("error", "Xoá Hotel hoàn tất");
                response.sendRedirect("partnerInfo.jsp");
            } else {
                // If failed, redirect back to user info page with an error message
                request.setAttribute("error", "Gặp lỗi trong quá trình xoá Hotel.");
                request.getRequestDispatcher("partnerInfo.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect("partnerInfo.jsp");
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
