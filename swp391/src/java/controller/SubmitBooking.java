package controller;

import dal.DAO;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.User;
import model.Booking;
import model.BookingsDetail;
import model.Payment;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Hotel;

@WebServlet(name = "SubmitBooking", urlPatterns = {"/submit"})
public class SubmitBooking extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            
            String indexPage = request.getParameter("index");
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
        request.setAttribute("randomH", randomList);
        request.setAttribute("source", "home");
        request.setAttribute("listH", hotelList);
        request.setAttribute("endP", page);
        request.setAttribute("tag", index);
        
            
            HttpSession session = request.getSession();
            User account = (User) session.getAttribute("account");

            if (account == null) {
                response.sendRedirect("login.jsp");
                return;
            }


            String[] roomIds = request.getParameterValues("room[]");
            String[] quantities = request.getParameterValues("qty[]");

            int roomTypesBooked = 0;
            for (String quantity : quantities) {
                if (Integer.parseInt(quantity) > 0) {
                    roomTypesBooked++;
                }
            }

            int bookingCount = new DAO().countBooking();
            String bookingId = String.format("B%03d", bookingCount + 1);

            String hotelId = request.getParameter("hotelId");
            String checkinDate = request.getParameter("checkinDate");
            String checkoutDate = request.getParameter("checkoutDate");
            String notes = request.getParameter("notes");
            String paymentMethod = request.getParameter("paymentMethod");
            String totalPrice = request.getParameter("totalPrice");

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
            booking.setBookingStatus("pending");
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
            session.setAttribute("bookingSuccess", true);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Booking Servlet handles the booking form submission";
    }
}
