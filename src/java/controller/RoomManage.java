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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Room;
import model.RoomAvailability;

/**
 *
 * @author hadi
 */
@WebServlet(name = "RoomManage", urlPatterns = {"/manageroom"})
public class RoomManage extends HttpServlet {

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
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        String roomType = request.getParameter("roomType");
        String fromDateStr = request.getParameter("fromDate");
        String toDateStr = request.getParameter("toDate");
        String idHotel = request.getParameter("hotelId");

        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        Date fromDate = null;
        Date toDate = null;

        if (fromDateStr != null && !fromDateStr.isEmpty()) {
            fromDate = sdf.parse(fromDateStr);
        }
        if (toDateStr != null && !toDateStr.isEmpty()) {
            toDate = sdf.parse(toDateStr);
        }

        List<DateInfo> dateList = new ArrayList<>();
        Map<String, List<RoomAvailability>> availabilityByDate = new HashMap<>();
        if (fromDate != null && toDate != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(fromDate);
            while (!calendar.getTime().after(toDate)) {
                Date currentDate = calendar.getTime();
                List<RoomAvailability> availability = new DAO().roomLeftByDate(roomType, currentDate);
                if (availability == null || availability.isEmpty()) {
                    Room room = new DAO().getRoomsByID(roomType); // Lấy thông tin phòng
                    if (room != null) {
                        RoomAvailability roomdefault = new RoomAvailability();
                        roomdefault.setRoomId(room.getRoom_id());
                        roomdefault.setRoomName(room.getRoom_name());
                        roomdefault.setPrice(room.getRoom_price());
                        roomdefault.setRoomsTotal(room.getNumRoom());
                        roomdefault.setRoomsBooked("0");
                        roomdefault.setRoomsLeft(room.getNumRoom());
                        availability = new ArrayList<>();
                        availability.add(roomdefault);
                    }
                }
                availabilityByDate.put(sdf.format(currentDate), availability);
                DateInfo dateInfo = new DateInfo();
                dateInfo.setDate(calendar.getTime());
                dateInfo.setDayOfWeek(getDayOfWeek(calendar.get(Calendar.DAY_OF_WEEK)));
                dateInfo.setFormattedDate(sdf.format(calendar.getTime()));
                dateList.add(dateInfo);

                calendar.add(Calendar.DATE, 1);
            }
        }

        List<Room> roomTypes = new DAO().getRoomsByHotel(idHotel);
        System.out.println("id hoo teo: " + idHotel + "room: " + roomType);
        request.setAttribute("dateList", dateList);
        request.setAttribute("availabilityByDate", availabilityByDate);
        request.setAttribute("roomTypes", roomTypes);
        request.setAttribute("selectedRoomType", roomType);
        request.setAttribute("fromDate", fromDateStr);
        request.setAttribute("toDate", toDateStr);
        request.setAttribute("idHotel", idHotel);
        request.getRequestDispatcher("roomManage.jsp").forward(request, response);
    }

    private String getDayOfWeek(int day) {
        switch (day) {
            case Calendar.SUNDAY:
                return "Chủ nhật";
            case Calendar.MONDAY:
                return "Thứ 2";
            case Calendar.TUESDAY:
                return "Thứ 3";
            case Calendar.WEDNESDAY:
                return "Thứ 4";
            case Calendar.THURSDAY:
                return "Thứ 5";
            case Calendar.FRIDAY:
                return "Thứ 6";
            case Calendar.SATURDAY:
                return "Thứ 7";
            default:
                return "";
        }
    }

    public static class DateInfo {

        private Date date;
        private String dayOfWeek;
        private String formattedDate;

        // Getters and setters
        public Date getDate() {
            return date;
        }

        public void setDate(Date date) {
            this.date = date;
        }

        public String getDayOfWeek() {
            return dayOfWeek;
        }

        public void setDayOfWeek(String dayOfWeek) {
            this.dayOfWeek = dayOfWeek;
        }

        public String getFormattedDate() {
            return formattedDate;
        }

        public void setFormattedDate(String formattedDate) {
            this.formattedDate = formattedDate;
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(RoomManage.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(RoomManage.class.getName()).log(Level.SEVERE, null, ex);
        }
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
