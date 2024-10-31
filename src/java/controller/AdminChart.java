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
import java.util.List;
import java.util.Map;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "AdminChart", urlPatterns = {"/AdminChart"})
public class AdminChart extends HttpServlet {

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
            out.println("<title>Servlet AdminChart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminChart at " + request.getContextPath() + "</h1>");
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

        for (int month = 1; month <= 12; month++) {
            monthlyRevenues[month - 1] = dao.getTotalMoneyByYearAndMonth(2024, month);
        }

        // Chỉ lưu số, không format với VND
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

        List<Map<String, Object>> top5Hotels = dao.getTop5HotelsByRevenue();
        request.setAttribute("top5Hotels", top5Hotels);

        request.getRequestDispatcher("webIncome.jsp").forward(request, response);
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
