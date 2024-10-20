/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import config.Config;
import dal.DAO;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import model.Booking;
import model.BookingsDetail;
import model.Hotel;
import model.Payment;
import model.User;

/**
 *
 * @author hadi
 */
@WebServlet(name = "VnpayServlet", urlPatterns = {"/createPayment"})
public class VnpayServlet extends HttpServlet {

    /**
     * Processes reqs for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param req servlet req
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ajaxServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ajaxServlet at " + req.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param req servlet req
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param req servlet req
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String indexPage = req.getParameter("index");
        try {
            int index = 1;
            if (indexPage != null && !indexPage.isEmpty()) {
                try {
                    index = Integer.parseInt(indexPage);
                } catch (NumberFormatException e) {
                }
            }
            DAO dao = new DAO();
            DAO dao1 = new DAO();
            int total = dao.getTotalHotel();
            int page = total / 16;
            if (total % 16 != 0) {
                page++;
            }
            List<Hotel> hotelList = dao.pagingHotels(index);
            List<Hotel> randomList = dao1.getRandomHotel();
            req.setAttribute("randomH", randomList);
            req.setAttribute("source", "home");
            req.setAttribute("listH", hotelList);
            req.setAttribute("endP", page);
            req.setAttribute("tag", index);

            HttpSession session = req.getSession();
            User account = (User) session.getAttribute("account");

            if (account == null) {
                resp.sendRedirect("login.jsp");
                return;
            }

            String[] roomIds = req.getParameterValues("room[]");
            String[] quantities = req.getParameterValues("qty[]");

            int roomTypesBooked = 0;
            for (String quantity : quantities) {
                if (Integer.parseInt(quantity) > 0) {
                    roomTypesBooked++;
                }
            }

            int bookingCount = new DAO().countBooking();
            String bookingId = String.format("B%03d", bookingCount + 1);

            String hotelId = req.getParameter("hotelId");
            String checkinDate = req.getParameter("checkinDate");
            String checkoutDate = req.getParameter("checkoutDate");
            String notes = req.getParameter("notes");
            String paymentMethod = req.getParameter("paymentMethod");
            String totalPrice = req.getParameter("totalPrice");

            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date checkIn = dateFormat.parse(checkinDate);
            Date checkOut = dateFormat.parse(checkoutDate);
            Date bookingDate = new Date();

            Booking booking = new Booking();
            booking.setBooking_id(bookingId);
            booking.setAcc_id(account.getAcc_id());
            booking.setHotel_id(hotelId);
            booking.setBooking_date(bookingDate);
            booking.setBooking_checkIn(checkIn);
            booking.setBooking_checkOut(checkOut);
            booking.setBookingStatus("0");
            booking.setBookingDetails(notes);
            booking.setBooking_total(totalPrice);
            booking.setBooking_quantity(String.valueOf(roomTypesBooked));

            new DAO().addBooking(booking);

            List<BookingsDetail> bookingDetails = new ArrayList<>();
            for (int i = 0; i < roomIds.length; i++) {
                int quantity = Integer.parseInt(quantities[i]);
                if (quantity > 0) {
                    BookingsDetail detail = new BookingsDetail(
                            bookingId,
                            roomIds[i],
                            String.valueOf(quantity)
                    );
                    new DAO().addBookingDetail(detail);
                    new DAO().updateNumRoom(String.valueOf(quantity), roomIds[i]);
                    bookingDetails.add(detail);
                }
            }

            String paymentId = "P" + bookingId.substring(1);
            Payment payment = new Payment();
            payment.setPaymentid(paymentId);
            payment.setBooking_id(bookingId);
            payment.setAmount(totalPrice);
            payment.setMethod(paymentMethod);
            payment.setPayDate(bookingDate);

            new DAO().addPayment(payment);
            session.setAttribute("idbooking", bookingId);

            //VNPAY
            long amount = Long.parseLong(totalPrice) * 100;
            String nameHT = new DAO().HotelById(hotelId).getHotel_name();
            String vnp_TxnRef = Config.getRandomNumber(8);
            String vnp_TmnCode = Config.vnp_TmnCode;

            Map<String, String> vnp_Params = new HashMap<>();
            vnp_Params.put("vnp_Version", Config.vnp_Version);
            vnp_Params.put("vnp_Command", Config.vnp_Command);
            vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
            vnp_Params.put("vnp_Amount", String.valueOf(amount));
            vnp_Params.put("vnp_CurrCode", "VND");
            vnp_Params.put("vnp_BankCode", "NCB");
            vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
            vnp_Params.put("vnp_OrderInfo", "Thanh toán phòng cho khách sạn:" + nameHT);
            vnp_Params.put("vnp_Locale", "vn");
            vnp_Params.put("vnp_OrderType", "topup");
            vnp_Params.put("vnp_ReturnUrl", Config.vnp_ReturnUrl);
            vnp_Params.put("vnp_IpAddr", "123.123.123.123");

            Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
            String vnp_CreateDate = formatter.format(cld.getTime());
            vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

            cld.add(Calendar.MINUTE, 15);
            String vnp_ExpireDate = formatter.format(cld.getTime());
            vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

            List fieldNames = new ArrayList(vnp_Params.keySet());
            Collections.sort(fieldNames);
            StringBuilder hashData = new StringBuilder();
            StringBuilder query = new StringBuilder();
            Iterator itr = fieldNames.iterator();
            while (itr.hasNext()) {
                String fieldName = (String) itr.next();
                String fieldValue = (String) vnp_Params.get(fieldName);
                if ((fieldValue != null) && (fieldValue.length() > 0)) {
                    //Build hash data
                    hashData.append(fieldName);
                    hashData.append('=');
                    hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                    //Build query
                    query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                    query.append('=');
                    query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                    if (itr.hasNext()) {
                        query.append('&');
                        hashData.append('&');
                    }
                }
            }
            String queryUrl = query.toString();
            String vnp_SecureHash = Config.hmacSHA512(Config.secretKey, hashData.toString());
            queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
            String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;
            System.out.println(paymentUrl);
            resp.sendRedirect(paymentUrl);
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
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
