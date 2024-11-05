package controller;

import dal.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Hotel;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FilterHotelsServlet", urlPatterns = {"/filter-hotels"})
public class HotelFilterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        try {
            // Get filter parameters
            String[] stars = request.getParameterValues("star");
            String city = request.getParameter("city");
            String district = request.getParameter("district");
            String ward = request.getParameter("ward");
            String type = request.getParameter("type");
            String[] services = request.getParameterValues("services");
            
            // Create filter conditions
            StringBuilder sqlFilter = new StringBuilder();
            if (stars != null && stars.length > 0) {
                sqlFilter.append(" AND hotel_star IN (");
                for (int i = 0; i < stars.length; i++) {
                    sqlFilter.append(stars[i]);
                    if (i < stars.length - 1) {
                        sqlFilter.append(",");
                    }
                }
                sqlFilter.append(")");
            }
            
            if (city != null && !city.isEmpty()) {
                sqlFilter.append(" AND hotel_city = ?");
            }
            
            if (district != null && !district.isEmpty()) {
                sqlFilter.append(" AND hotel_district = ?");
            }
            
            if (ward != null && !ward.isEmpty()) {
                sqlFilter.append(" AND hotel_ward = ?");
            }
            
            if (type != null && !type.isEmpty()) {
                sqlFilter.append(" AND hotel_type = ?");
            }
            
            // Updated services filter to use only Services table
            if (services != null && services.length > 0) {
                sqlFilter.append(" AND hotel_id IN (SELECT hotel_id FROM Services WHERE service_id IN (");
                for (int i = 0; i < services.length; i++) {
                    sqlFilter.append("?");
                    if (i < services.length - 1) {
                        sqlFilter.append(",");
                    }
                }
                sqlFilter.append("))");
            }
            
            // Get page number
            String indexPage = request.getParameter("index");
            if(indexPage == null) {
                indexPage = "1";
            }
            int index = Integer.parseInt(indexPage);
            
            // Get hotels with filter
            
            List<Hotel> hotels = new DAO().getHotelsWithFilter(sqlFilter.toString(), index, 
                    city, district, ward, type, services); 
            int total = new DAO().getTotalHotelsWithFilter(sqlFilter.toString(), 
                    city, district, ward, type, services); 
            System.out.println("hotelll: " + hotels);
            int endPage = total / 8;
            if (total % 8 != 0) {
                endPage++;
            }
            
            // Set attributes and forward
            request.setAttribute("listH", hotels);
            request.setAttribute("endP", endPage);
            request.setAttribute("tag", index);
            request.setAttribute("source", "filter-hotels");
            request.getRequestDispatcher("home.jsp").forward(request, response);
            
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
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
}