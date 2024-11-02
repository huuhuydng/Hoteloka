package controller;

import config.Config;
import dal.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import model.Email;
import model.User;

@WebServlet(name = "VnpaySubmit", urlPatterns = {"/vnpaysubmit"})
public class VnpaySubmit extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User account = (User) session.getAttribute("account");
        // Process return from VNPAY
        Map<String, String> fields = new HashMap<>();
        for (Enumeration params = request.getParameterNames(); params.hasMoreElements();) {
            String fieldName = URLEncoder.encode((String) params.nextElement(), StandardCharsets.US_ASCII.toString());
            String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                fields.put(fieldName, fieldValue);
            }
        }

        String vnp_SecureHash = request.getParameter("vnp_SecureHash");
        if (fields.containsKey("vnp_SecureHashType")) {
            fields.remove("vnp_SecureHashType");
        }
        if (fields.containsKey("vnp_SecureHash")) {
            fields.remove("vnp_SecureHash");
        }
        String signValue = Config.hashAllFields(fields);

        if (signValue.equals(vnp_SecureHash)) {
            String vnp_ResponseCode = request.getParameter("vnp_ResponseCode");
            if ("00".equals(vnp_ResponseCode)) {
                session.setAttribute("bookingSuccess", true);
              Email.senEmail( account.getAcc_email(),
    "Hoteloka - Your Bookings are Success",
    "Kính gửi Quý khách,\n\n" +
    "Cảm ơn Quý khách đã tin tưởng và lựa chọn dịch vụ của Hoteloka.\n\n" +
    "Chúng tôi xin vui mừng thông báo đơn đặt phòng của Quý khách đã được xác nhận thành công!\n\n" +
    "Quý khách có thể xem chi tiết đặt phòng trong tài khoản Hoteloka của mình hoặc kiểm tra email xác nhận chi tiết sẽ được gửi sau.\n\n" +
    "Nếu Quý khách cần hỗ trợ thêm, vui lòng liên hệ:\n" +
    "- Hotline:  0833 100904\n" +
    "- Email: huynhde180295@fpt.edu.vn\n" +
    "Trân trọng,\n" +
    "Đội ngũ Hoteloka"
);
            } else {
                session.setAttribute("bookingFail", true);
                String idbooking = (String) session.getAttribute("idbooking");
                new DAO().deleteBooking(idbooking);
            }
        } else {
            session.setAttribute("bookingFail", true);
        }

        request.getRequestDispatcher("home").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}