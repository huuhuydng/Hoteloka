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
import java.util.ArrayList;
import java.util.List;
import model.BookingsDetail;
import model.Hotel;
import model.Room;
import model.User;

/**
 *
 * @author hadi
 */
@WebServlet(name = "BookingServlet", urlPatterns = {"/booking"})
public class BookingServlet extends HttpServlet {

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
            out.println("<title>Servlet BookingServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingServlet at " + request.getContextPath() + "</h1>");
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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String hotel_ID = request.getParameter("hotel_id");
        String checkIn = request.getParameter("check-in");
        String checkOut = request.getParameter("check-out");
        String[] roomIds = request.getParameterValues("room[]");
        String[] quantities = request.getParameterValues("qty[]");
        HttpSession session = request.getSession();
        String paymentMethod = request.getParameter("paymentMethod");
        User u = (User) session.getAttribute("account");
        if (u == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
            // Kiểm tra xem roomIds và quantities không null và có cùng độ dài
            if (roomIds != null && quantities != null && roomIds.length == quantities.length) {
                List<BookingsDetail> bookedRooms = new ArrayList<>();

                for (int i = 0; i < roomIds.length; i++) {
                    String quantity = quantities[i];

                    if (quantity != null && !quantity.isEmpty() && !quantity.equals("0")) {
                        BookingsDetail roomInfo = new BookingsDetail();
                        roomInfo.setRoomId(roomIds[i]);
                        roomInfo.setQuantity(quantity);
                        bookedRooms.add(roomInfo);
                    }
                }

                List<Room> roomDetail = new ArrayList<>();
                for (BookingsDetail bookedRoom : bookedRooms) {
                    roomDetail.add(new DAO().getRoomsByID(bookedRoom.getRoomId()));
                }

                System.out.println("Check in: " + checkIn);
                System.out.println("Check out: " + checkOut);

                DAO dao = new DAO();
                Hotel hotel = dao.HotelById(hotel_ID);

                // Đặt các thuộc tính để truyền đến trang JSP
                request.setAttribute("room", roomDetail);
                request.setAttribute("book", bookedRooms);
                request.setAttribute("checkIn", checkIn);
                request.setAttribute("checkOut", checkOut);
                request.setAttribute("hotel", hotel);

                // Chuyển tiếp yêu cầu và phản hồi đến booking.jsp
                request.getRequestDispatcher("booking.jsp").forward(request, response);
            }
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
