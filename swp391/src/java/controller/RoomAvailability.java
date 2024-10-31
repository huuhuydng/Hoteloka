package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dal.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/roomAvailability")
public class RoomAvailability extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roomId = request.getParameter("roomId");
        String checkInStr = request.getParameter("checkIn");
        String checkOutStr = request.getParameter("checkOut");
        
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        Date checkIn = null;
        Date checkOut = null;
        
        try {
            checkIn = sdf.parse(checkInStr);
            checkOut = sdf.parse(checkOutStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        DAO roomDAO = new DAO();
        String roomsLeft = roomDAO.roomLeft(roomId, checkIn, checkOut);
        System.out.println("roomleft" + roomsLeft);
        JsonObject jsonResponse = new JsonObject();
        jsonResponse.addProperty("roomsLeft", roomsLeft);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.print(new Gson().toJson(jsonResponse));
        out.flush();
    }
}