package controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import dal.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import model.Booking;
import model.Feedback;

@WebServlet(name = "ReviewServlet", urlPatterns = {"/submitReview", "/getReviews"})
public class ReviewServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hotelId = request.getParameter("hotelId");

        DAO feedbackDAO = new DAO();
        List<Feedback> feedbacks = feedbackDAO.getReviewsByHotelId(hotelId);
        
        // Sử dụng GsonBuilder để tùy chỉnh serialization của Date
        Gson gson = new GsonBuilder()
                .setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                .create();

        String jsonFeedbacks = gson.toJson(feedbacks);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonFeedbacks);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        try {
            BufferedReader reader = request.getReader();
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }

            Gson gson = new Gson();
            JsonObject reviewData = gson.fromJson(sb.toString(), JsonObject.class);
            String accId = reviewData.get("accId").getAsString();
            String hotelId = reviewData.get("hotelId").getAsString();

            DAO bookingDAO = new DAO();
            if (bookingDAO.checkBooking(accId, hotelId)) {
                int feedbackCount = new DAO().countFeedback();
                String feedback_id = String.format("F%03d", feedbackCount + 1);
                Booking booking = new DAO().getBooking(accId, hotelId);
                Date currentDate = new Date();

                // Chuyển đổi rating thành số nguyên
                int rating = Integer.parseInt(reviewData.get("rating").getAsString());

                boolean success = new DAO().addFeedbacks(
                        feedback_id,
                        booking.getBooking_id(),
                        reviewData.get("text").getAsString(),
                        String.valueOf(rating),
                        currentDate
                );

                if (success) {
                    out.print("{\"status\":\"success\", \"message\":\"Review submitted successfully\"}");
                } else {
                    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                    out.print("{\"status\":\"error\", \"message\":\"Failed to submit review\"}");
                }
            } else {
                response.setStatus(HttpServletResponse.SC_FORBIDDEN);
                out.print("{\"status\":\"error\", \"message\":\"User is not eligible to review this hotel\"}");
            }
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            out.print("{\"status\":\"error\", \"message\":\"" + e.getMessage() + "\"}");
        }
    }
}
