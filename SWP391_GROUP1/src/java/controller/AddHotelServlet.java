package controller;

import dal.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author hadi
 */
@WebServlet(name = "AddHotelServlet", urlPatterns = {"/addhotel"})
public class AddHotelServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("hotelInputInfo.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login.jsp");
            return;
        }


        String hotelName = request.getParameter("hotel_name");
        String hotelStar = request.getParameter("hotel_star");
        String hotelNumRoom = request.getParameter("hotel_numTypeRoom");
        String hotelType1 = request.getParameter("hotel_type");
        String hotelCityName = request.getParameter("selectedCityName");  
        String hotelDistrictName = request.getParameter("selectedDistrictName");  
        String hotelWardName = request.getParameter("selectedWardName"); 
        String hotelStreet = request.getParameter("hotel_street");
        String hotelPhone = request.getParameter("hotel_phone");
        String hotelImagesGeneral = request.getParameter("hotel_imagesGeneral");
        String hotelImagesDetail = request.getParameter("hotel_imagesDetail");
        String hotelService = request.getParameter("hotel_services");
        String hotelCheck = request.getParameter("hotel_checkin_checkout");
        String hotelChild = request.getParameter("hotel_child_policy");
        String hotelCancel = request.getParameter("hotel_cancellation_policy");
        String hotelNote = request.getParameter("hotel_notes");
        String hotelDesc = request.getParameter("hotel_desc");

        session.setAttribute("hotel_name", hotelName);
        session.setAttribute("hotel_star", hotelStar);
        session.setAttribute("hotel_numTypeRoom", hotelNumRoom);
        session.setAttribute("hotel_type", hotelType1);
        session.setAttribute("hotel_city_name", hotelCityName);
        session.setAttribute("hotel_district_name", hotelDistrictName);
        session.setAttribute("hotel_ward_name", hotelWardName);
        session.setAttribute("hotel_street", hotelStreet);
        session.setAttribute("hotel_phone", hotelPhone);
        session.setAttribute("hotel_imagesGeneral", hotelImagesGeneral);
        session.setAttribute("hotel_imagesDetail", hotelImagesDetail);
        session.setAttribute("hotel_services", hotelService);
        session.setAttribute("hotel_checkin_checkout", hotelCheck);
        session.setAttribute("hotel_child_policy", hotelChild);
        session.setAttribute("hotel_cancellation_policy", hotelCancel);
        session.setAttribute("hotel_notes", hotelNote);
        session.setAttribute("hotel_desc", hotelDesc);

        try {
            response.sendRedirect("roomInputInfo.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Lỗi xảy ra khi thêm khách sạn. Vui lòng thử lại.");
            request.getRequestDispatcher("errorPage.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet thêm khách sạn vào hệ thống";
    }
}
