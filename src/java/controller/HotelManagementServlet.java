package controller;

import dal.DAO;
import dto.HotelDTO;
import model.Room;
import model.Services;
import model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HotelManagementServlet", urlPatterns = {"/hotelManagement"})
public class HotelManagementServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        HotelDTO hotel = (HotelDTO) session.getAttribute("hotel");
        String id = hotel.getHotel_id();
        System.out.println("HotelID: " + id);

        DAO dao = new DAO();
//        HotelDTO hotel = dao.getHotelByUser(user.getAcc_id());

        if (hotel == null) {
            request.setAttribute("error", "Bạn chưa có khách sạn nào!");
            request.getRequestDispatcher("partnerDashboard.jsp").forward(request, response);
            return;
        }

        // Lấy thông tin chi tiết về khách sạn
        List<Services> allServices = new DAO().getallService();
        List<Services> hotelServices = new DAO().getService(id);
        List<Room> hotelRooms = new DAO().getRoomsByHotel(id);
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
        request.getRequestDispatcher("hotelManagement.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Xử lý các yêu cầu POST nếu cần (ví dụ: cập nhật thông tin khách sạn)
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Hotel Management Servlet";
    }
}
