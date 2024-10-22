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
import model.Room;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "AddNewRoom", urlPatterns = {"/AddNewRoom"})
public class AddNewRoom extends HttpServlet {

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

        String hotelNumRoom = request.getParameter("hotel_numTypeRoom");
        session.setAttribute("hotel_numTypeRoom", hotelNumRoom);
        try {
            response.sendRedirect("addNewRoom.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Lỗi xảy ra khi thêm Phongf. Vui lòng thử lại.");
            request.getRequestDispatcher("partnerInfo.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        
        String roomId = request.getParameter("room_id");
        String hotelId = request.getParameter("hotel_id");
        String roomName = request.getParameter("room_name");
        String roomPrice = request.getParameter("room_price");
        String roomImg = request.getParameter("room_img");
        String numPeople = request.getParameter("numPeople");
        String numRoom = request.getParameter("numRoom");
        String hotelNumRoom = (String) session.getAttribute("hotel_numTypeRoom");

        // Thêm phòng mới vào sql
        DAO dao = new DAO();

        boolean isAdded = dao.addNewRoom(hotelId, roomName, roomPrice, roomImg, numPeople, numRoom);
        System.out.println("Thông tin");
        System.out.println("ID: " + roomId + " Name: " + roomName + " Price : " + roomPrice + " img:" + roomImg + " numpeople: " + numPeople + " numRoom: " + numRoom);
        
        HotelDTO h = new DAO().getHotelById(hotelId);
        session.setAttribute("hotel", h);
        request.getRequestDispatcher("listRoom").forward(request, response);
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
