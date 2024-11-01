/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import dto.HotelDTO;
import dto.RoomDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Room;
import model.Services;
import model.User;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name="ApproveHotelDetailsServlet", urlPatterns={"/hotel-approve-detail"})
public class ApproveHotelDetailsServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        User user = (User) session.getAttribute("account");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        DAO dao = new DAO();
        HotelDTO hotel = dao.getHotelByUser(id);

        // Lấy thông tin chi tiết về khách sạn
        List<Services> allServices = new DAO().getallService();
        List<Services> hotelServices = new DAO().getService(hotel.getHotel_id());
        List<Room> hotelRooms = new DAO().getRoomsByHotel(hotel.getHotel_id());
        System.out.println("dichvu: " + hotelServices);
        // Xử lý ảnh chi tiết của khách sạn
        if (hotel.getHotel_imagesDetail() != null) {
            String imagesDetailStr = String.join(",", hotel.getImagesDetail());
            request.setAttribute("imagesDetailStr", imagesDetailStr);
        }

        // Đặt các thuộc tính để sử dụng trong JSP
        request.setAttribute("hotel", hotel);
        request.setAttribute("rooms", hotelRooms);
        request.setAttribute("allServices", allServices);
        request.setAttribute("hotelServices", hotelServices);

        // Chuyển hướng đến trang JSP mới
        request.getRequestDispatcher("adminHotelDetail.jsp").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
