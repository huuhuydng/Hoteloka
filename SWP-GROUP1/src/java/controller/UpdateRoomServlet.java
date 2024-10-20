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
import model.Room;
import model.User;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "UpdateRoomServlet", urlPatterns = {"/updateRoom"})
public class UpdateRoomServlet extends HttpServlet {

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

        String hotelId = request.getParameter("hotel_id");
        List<Room> rooms = new DAO().getRoomsByHotel(hotelId);

        session.setAttribute("room", rooms);
        response.sendRedirect("eachRoomUpdate.jsp");
//        request.getRequestDispatcher("eachRoomUpdate.jsp").forward(request, response);
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
        HttpSession session = request.getSession(false);
        DAO dao = new DAO();

        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        String hotelId = request.getParameter("hotel_id");
        
        List<Room> rooms = new DAO().getRoomsByHotel(hotelId);
        String roomId = request.getParameter("room_id");

        String roomName = request.getParameter("room_name");
        String roomPrice = request.getParameter("room_price");
        String roomImg = request.getParameter("room_img");
        String numPeople = request.getParameter("numPeople");
        String numRoom = request.getParameter("numRoom");

        boolean isUpdate = dao.updateRoom(roomId, roomName, roomPrice, roomImg, numPeople, numRoom);
        if (isUpdate) {
            session.setAttribute("error", "Cập nhật phòng thành công!");
        } else {
            session.setAttribute("error", "Cập nhật phòng thất bại. Hãy thử lại!");
        }

        // Redirect back to the room list page
        request.getRequestDispatcher("partnerInfo.jsp").forward(request, response);

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
