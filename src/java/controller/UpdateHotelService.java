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
import java.util.Arrays;
import java.util.List;
import model.Services;
import model.User;

/**
 *
 * @author hadi
 */
@WebServlet(name = "UpdateHotelService", urlPatterns = {"/updatehotelservice"})
public class UpdateHotelService extends HttpServlet {

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
        HotelDTO hotel = (HotelDTO) session.getAttribute("hotel");
        String id = hotel.getHotel_id();
        if (u == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        List<Services> allServices = new DAO().getallService();
        List<Services> hotelServices = new DAO().getService(id);
        request.setAttribute("allServices", allServices);
        request.setAttribute("service", hotelServices);
        session.setAttribute("all_service", allServices);
        session.setAttribute("service", hotelServices);
        request.getRequestDispatcher("updateHotelService.jsp").forward(request, response);
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
        String[] selectedServices = request.getParameterValues("hotel_sv[]U");
        List<String> serviceIds = Arrays.asList(selectedServices);
        HttpSession session = request.getSession();
        String idHotel = request.getParameter("hotelId");
        new DAO().updateServiceForHotel(idHotel, serviceIds);
        HotelDTO h = new DAO().getHotelById(idHotel);
        List<Services> allServices = new DAO().getallService();
        List<Services> hotelServices = new DAO().getService(idHotel);
        System.out.println("service"+serviceIds);
        session.setAttribute("hotel", h);
        request.setAttribute("allServices", allServices);
        request.setAttribute("hotelServices", hotelServices);
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
