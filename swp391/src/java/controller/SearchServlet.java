package controller;

import dal.DAO;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Hotel;

@WebServlet(name = "SearchServlet", urlPatterns = {"/search"})
public class SearchServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(false);

        try {
            String indexS = request.getParameter("index");
            String checkInParam = request.getParameter("n_begin");
            String checkOutParam = request.getParameter("n_end");

            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
            Date checkIn = null;
            Date checkOut = null;

            // Xử lý trang phân trang
            if (indexS == null) {
                indexS = "1";
            }
            String search = request.getParameter("search");
            int index = Integer.parseInt(indexS);
            DAO dao = new DAO();
            int count = dao.count(search);
            int endPage = count / 16;
            if (count % 16 != 0) {
                endPage++;
            }

            // Xử lý ngày check-in và check-out
            if (checkInParam == null || checkInParam.isEmpty()) {
                // Nếu không có check-in, sử dụng ngày hiện tại
                checkIn = new Date();
                session.setAttribute("checkIn", dateFormat.format(checkIn));
            } else {
                checkIn = dateFormat.parse(checkInParam);
                session.setAttribute("checkIn", checkInParam);
            }

            if (checkOutParam == null || checkOutParam.isEmpty()) {
                // Nếu không có check-out, sử dụng ngày hôm sau
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(checkIn);
                calendar.add(Calendar.DATE, 1);
                checkOut = calendar.getTime();
                session.setAttribute("checkOut", dateFormat.format(checkOut));
            } else {
                checkOut = dateFormat.parse(checkOutParam);
                session.setAttribute("checkOut", checkOutParam);
            }

            // Hiển thị danh sách khách sạn
            List<Hotel> hotelSearch = dao.searchHotels(index, search);
            request.setAttribute("endPage", endPage);
            request.setAttribute("listSearch", hotelSearch);
            request.setAttribute("search", search);
            request.setAttribute("tag", index);
            request.setAttribute("source", "search");

            // Chuyển tiếp đến trang kết quả tìm kiếm
            request.getRequestDispatcher("search1.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            // Xử lý lỗi
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
