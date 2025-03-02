/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dto.HotelDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.DecimalFormat;
import org.apache.tomcat.jni.SSLContext;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "ChartServlet", urlPatterns = {"/ChartServlet"})
public class ChartServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChartServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        double[] monthlyRevenues = new double[12];
        int[] monthlyBookings = new int[12];
        HttpSession session = request.getSession();
HotelDTO hotel = (HotelDTO)session.getAttribute("hotel");
        for (int month = 1; month <= 12; month++) {
            monthlyRevenues[month - 1] = dao.getTotalMoneyByYearAndMonthAndHotel(2024, month,hotel.getHotel_id());
            monthlyBookings[month - 1] = dao.getBookingCountByYearAndMonthAndHotel(2024, month,hotel.getHotel_id());
        }

        request.setAttribute("year012024", monthlyRevenues[0]);
        request.setAttribute("year022024", monthlyRevenues[1]);
        request.setAttribute("year032024", monthlyRevenues[2]);
        request.setAttribute("year042024", monthlyRevenues[3]);
        request.setAttribute("year052024", monthlyRevenues[4]);
        request.setAttribute("year062024", monthlyRevenues[5]);
        request.setAttribute("year072024", monthlyRevenues[6]);
        request.setAttribute("year082024", monthlyRevenues[7]);
        request.setAttribute("year092024", monthlyRevenues[8]);
        request.setAttribute("year102024", monthlyRevenues[9]);
        request.setAttribute("year112024", monthlyRevenues[10]);
        request.setAttribute("year122024", monthlyRevenues[11]);

        request.setAttribute("bookingCount01", monthlyBookings[0]);
        request.setAttribute("bookingCount02", monthlyBookings[1]);
        request.setAttribute("bookingCount03", monthlyBookings[2]);
        request.setAttribute("bookingCount04", monthlyBookings[3]);
        request.setAttribute("bookingCount05", monthlyBookings[4]);
        request.setAttribute("bookingCount06", monthlyBookings[5]);
        request.setAttribute("bookingCount07", monthlyBookings[6]);
        request.setAttribute("bookingCount08", monthlyBookings[7]);
        request.setAttribute("bookingCount09", monthlyBookings[8]);
        request.setAttribute("bookingCount10", monthlyBookings[9]);
        request.setAttribute("bookingCount11", monthlyBookings[10]);
        request.setAttribute("bookingCount12", monthlyBookings[11]);

        request.getRequestDispatcher("incomeReport.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
