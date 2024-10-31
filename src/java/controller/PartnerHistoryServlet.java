/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dto.BookingDTO;
import dto.HotelDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Booking;
import model.User;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "PartnerHistoryServlet", urlPatterns = {"/PartnerHistoryServlet"})
public class PartnerHistoryServlet extends HttpServlet {

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

//        //lay thong tin nguoi dang login la ai
//        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("account");
//        HotelDTO hotel = (HotelDTO) session.getAttribute("hotel");
//
//        //lay du lieu tu db
//        DAO dao = new DAO();
//
//        List<BookingDTO> bookings = dao.getBookingsByHotel(hotel.getHotel_id());
//        System.out.println(bookings);
//
//        request.setAttribute("bookings", bookings);
//
//        request.getRequestDispatcher("partnerHistory.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        HotelDTO hotel = (HotelDTO) session.getAttribute("hotel");
        DAO dao = new DAO();
        List<BookingDTO> bookings = dao.getBookingsByHotel(hotel.getHotel_id());
        String dateType = request.getParameter("dateType");
        String fromDateStr = request.getParameter("fromDate");
        String toDateStr = request.getParameter("toDate");
        String otherDateType = request.getParameter("otherdatetypeDiv");

        List<BookingDTO> filteredBookings = new ArrayList<>();

        if (dateType != null) {
            if (dateType.equals("status") && otherDateType != null) {
                for (BookingDTO booking : bookings) {
                    if (booking.getBookingStatus().equals(otherDateType)) {
                        filteredBookings.add(booking);
                    }
                }
                bookings = filteredBookings;
                request.setAttribute("selectedDateType", dateType);
                request.setAttribute("otherDateType", otherDateType);
                request.setAttribute("fromDate", fromDateStr);
                    request.setAttribute("toDate", toDateStr);
            } 
            else if (fromDateStr != null && toDateStr != null
                    && !fromDateStr.isEmpty() && !toDateStr.isEmpty()) {
                try {
                    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                    Date fromDate = formatter.parse(fromDateStr);
                    Date toDate = formatter.parse(toDateStr);

                    for (BookingDTO booking : bookings) {
                        Date compareDate = null;
                        switch (dateType) {
                            case "booking" ->
                                compareDate = booking.getBooking_date();
                            case "checkin" ->
                                compareDate = booking.getBooking_checkIn();
                            case "checkout" ->
                                compareDate = booking.getBooking_checkOut();
                        }
                        if (compareDate != null
                                && (compareDate.equals(fromDate) || compareDate.after(fromDate))
                                && (compareDate.equals(toDate) || compareDate.before(toDate))) {
                            filteredBookings.add(booking);
                        }
                    }
                    bookings = filteredBookings;
                    request.setAttribute("selectedDateType", dateType);
                    request.setAttribute("fromDate", fromDateStr);
                    request.setAttribute("toDate", toDateStr);

                } catch (ParseException e) {
                    System.out.println("Error parsing date: " + e.getMessage());
                }
            }
        }
        request.setAttribute("bookings", bookings);
        request.getRequestDispatcher("partnerHistory.jsp").forward(request, response);
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
