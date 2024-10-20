/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dto.HotelDTO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;
import model.Room;
import model.Services;
import model.User;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "UpdateHotelServlet", urlPatterns = {"/updateHotel"})
public class UpdateHotelServlet extends HttpServlet {

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

        HotelDTO h = new DAO().getHotelByUser(u.getAcc_id());

        if (h == null) {
            request.setAttribute("error", "Bạn chưa có Hotel nào!");
            request.getRequestDispatcher("partnerInfo.jsp").forward(request, response);
        }
        List<Services> x = new DAO().getallService();
        List<Services> s = new DAO().getService(h.getHotel_id());
        List<Room> r = new DAO().getRoomsByHotel(h.getHotel_id());

        if (h != null && h.getHotel_imagesDetail() != null) {
            String imagesDetailStr = String.join(",", h.getImagesDetail());
            h.getHotel_imagesDetail();
            session.setAttribute("imagesDetailStr", imagesDetailStr);
        }

        session.setAttribute("room", r);
        session.setAttribute("all_service", x);
        session.setAttribute("service", s);
        session.setAttribute("hotel", h);
        response.sendRedirect("updateHotel.jsp");
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

        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Retrieve form data
        String hotelId = request.getParameter("hotel_id");  // Assuming hidden field for hotel_id
        String hotelName = request.getParameter("hotel_nameU");
        String hotelStar = request.getParameter("hotel_starU");
        String hotelNumRoom = request.getParameter("hotel_numTypeRoomU");
        String hotelType1 = request.getParameter("hotel_typeU");
        String hotelCity = request.getParameter("hotel_cityU");
        String hotelDistrict = request.getParameter("hotel_districtU");
        String hotelWard = request.getParameter("hotel_wardU");
        String hotelStreet = request.getParameter("hotel_streetU");
        String hotelImagesGeneral = request.getParameter("hotel_imagesGeneralU");
        String hotelImagesDetail = request.getParameter("hotel_imagesDetailU");
        
        String[] selectedServices = request.getParameterValues("hotel_sv[]U");
        List<String> serviceIds = Arrays.asList(selectedServices);
        
        String hotelPolicy = request.getParameter("hotel_servicesU");
        String hotelCheckInOut = request.getParameter("hotel_checkin_checkoutU");
        String hotelChildPolicy = request.getParameter("hotel_child_policyU");
        String hotelCancelPolicy = request.getParameter("hotel_cancellation_policyU");
        String hotelNotes = request.getParameter("hotel_notesU");
        String hotelDesc = request.getParameter("hotel_descU");

        // Combine policies
        String completePolicy = String.join("; ", hotelPolicy, hotelCheckInOut, hotelChildPolicy, hotelCancelPolicy, hotelNotes);

        DAO dao = new DAO();
        String hotelType = dao.getTypeId(hotelType1);

        // Update hotel information in the database
        boolean isUpdated = dao.updateHotel(hotelId, (String) session.getAttribute("accID"), hotelName, hotelNumRoom, hotelImagesGeneral,
                hotelImagesDetail, hotelType, completePolicy, hotelStar, hotelDesc,
                hotelStreet, hotelWard, hotelDistrict, hotelCity);
        new DAO().updateServiceForHotel(hotelId, serviceIds);

        // Redirect or display an appropriate message
        if (isUpdated) {
            session.setAttribute("error", "Hotel updated successfully!");
            request.getRequestDispatcher("partnerInfo.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Failed to update hotel.");
            request.getRequestDispatcher("partnerInfo.jsp").forward(request, response);
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
