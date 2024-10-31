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
//import org.eclipse.tags.shaded.org.apache.bcel.generic.DADD;

/**
 *
 * @author hadi
 */
@WebServlet(name = "updatehotelpolicy", urlPatterns = {"/updatehotelpolicy"})
public class UpdateHotelPolicy extends HttpServlet {

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
        User u = (User) session.getAttribute("account");
        if (u == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        request.getRequestDispatcher("updateHotelPolicy.jsp").forward(request, response);
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
        String hotelId = request.getParameter("hotelId");
        String[] policyParts = new String[5];
        for (int i = 0; i < 5; i++) {
            String policyPart = request.getParameter("hotel_policy_" + i + "U");
            if (policyPart != null) {
                policyParts[i] = policyPart;
            }
        }
        String updatedPolicy = String.join(";", policyParts);
        System.out.println("Policy " + updatedPolicy);
        boolean isUpdate = new DAO().updateHotelPolicy(hotelId, updatedPolicy);
        HttpSession session = request.getSession();
        HotelDTO h = new DAO().getHotelById(hotelId);
        session.setAttribute("hotel", h);
        request.getRequestDispatcher("hotelManagement").forward(request, response);
        
        
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
