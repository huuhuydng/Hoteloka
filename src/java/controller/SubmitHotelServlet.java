package controller;

import dal.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;
import model.User;

/**
 *
 * @author hadi
 */
@WebServlet(name = "SubmitHotelServlet", urlPatterns = {"/submithotel"})
public class SubmitHotelServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String accId = (String) session.getAttribute("accID");
        String hotelName = (String) session.getAttribute("hotel_name");
        String hotelStar = (String) session.getAttribute("hotel_star");
        String hotelNumRoom = (String) session.getAttribute("hotel_numTypeRoom");
        String hotelType1 = (String) session.getAttribute("hotel_type");
        String hotelCity = (String) session.getAttribute("hotel_city_name");
        String hotelDistrict = (String) session.getAttribute("hotel_district_name");
        String hotelWard = (String) session.getAttribute("hotel_ward_name");
        String hotelStreet = (String) session.getAttribute("hotel_street");
        String hotelPhone = (String) session.getAttribute("hotel_phone");
        String hotelImagesGeneral = (String) session.getAttribute("hotel_imagesGeneral");
        String hotelImagesDetail = (String) session.getAttribute("hotel_imagesDetail");
        String[] selectedServices = (String[]) session.getAttribute("selectedServices");
        List<String> serviceIds = Arrays.asList(selectedServices);
        String hotelService = (String) session.getAttribute("hotel_services");
        String hotelCheck = (String) session.getAttribute("hotel_checkin_checkout");
        String hotelChild = (String) session.getAttribute("hotel_child_policy");
        String hotelCancel = (String) session.getAttribute("hotel_cancellation_policy");
        String hotelNote = (String) session.getAttribute("hotel_notes");
        String hotelDesc = (String) session.getAttribute("hotel_desc");

        String Policy = String.join("; ", hotelService, hotelCheck, hotelChild, hotelCancel, hotelNote);

        DAO dao = new DAO();
        

        String hotelId = "HT" + (dao.getTotalHotel() + 1);

        String hotelType = dao.getTypeId(hotelType1);

        try {
            dao.addHotel(hotelId, accId, hotelName, hotelNumRoom, hotelImagesGeneral, hotelImagesDetail,
                    hotelType, Policy, hotelStar, hotelDesc, hotelStreet, hotelWard, hotelDistrict, hotelCity);
            new DAO().addServiceForHotel(hotelId, serviceIds);
//            new DAO().updateRole(accId, "1");
            User acc = new DAO().getUserByID(accId);
            System.out.println(acc);
            session.setAttribute("account", acc);
            int roomCount = Integer.parseInt(hotelNumRoom);
            int totalRooms = new DAO().getTotalRoom();

            for (int i = 1; i <= roomCount; i++) {
                String roomId = "R" + (totalRooms + i);
                
                String roomName = request.getParameter("room_name_" + i);
                String roomPrice = request.getParameter("room_price_" + i);
                String roomImg = request.getParameter("room_img_" + i);
                String numPeople = request.getParameter("numPeople_" + i);
                String numRoom = request.getParameter("numRoom_" + i);

                System.out.println("Thông tin");
                System.out.println("ID: " + roomId + " Name: " + roomName + " Price : " + roomPrice + " img:" + roomImg + " numpeople: " + numPeople + " numRoom: " + numRoom);

                new DAO().addRoom(roomId, hotelId, roomName, roomPrice, roomImg, numPeople, numRoom);
            }

            session.removeAttribute("hotel_name");
            session.removeAttribute("hotel_star");
            session.removeAttribute("hotel_numTypeRoom");
            session.removeAttribute("hotel_type");
            session.removeAttribute("hotel_city_name");
            session.removeAttribute("hotel_district_name");
            session.removeAttribute("hotel_ward_name");
            session.removeAttribute("hotel_street");
            session.removeAttribute("hotel_phone");
            session.removeAttribute("hotel_imagesGeneral");
            session.removeAttribute("hotel_imagesDetail");
            session.removeAttribute("hotel_services");
            session.removeAttribute("hotel_checkin_checkout");
            session.removeAttribute("hotel_child_policy");
            session.removeAttribute("hotel_cancellation_policy");
            session.removeAttribute("hotel_notes");
            session.removeAttribute("hotel_desc");

            session.setAttribute("hotelSuccess", true);
            response.sendRedirect("userInfo.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Lỗi xảy ra khi lưu thông tin. Vui lòng thử lại.");
            request.getRequestDispatcher("errorPage.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet để submit thông tin khách sạn và phòng";
    }
}

