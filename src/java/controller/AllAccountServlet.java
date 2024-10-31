/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.User;

/**
 *
 * @author Hung Bui
 */
@WebServlet(name = "AllAccountServlet", urlPatterns = {"/AllAccountServlet"})
public class AllAccountServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        DAO dao = new DAO();

        String searchQuery = request.getParameter("search");
        String searchType = request.getParameter("searchType");
        List<User> searchResult;

        if (searchQuery != null && !searchQuery.trim().isEmpty()) {
            switch (searchType) {
                case "email":
                    searchResult = dao.searchAccountsByEmail(searchQuery);
                    break;
                case "name":
                    searchResult = dao.searchAccountsByName(searchQuery);
                    break;
                case "phone":
                    searchResult = dao.searchAccountsByPhone(searchQuery);
                    break;
                case "id":
                    searchResult = dao.searchAccountsById(searchQuery);
                    break;
                default:
                    searchResult = dao.searchAccountsAll(searchQuery);
                    break;
            }
        } else {
            searchResult = dao.getAllAccount();
        }

        // Get the current page number
        int page = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            page = Integer.parseInt(pageParam);
        }

        // Calculate the start and end index for the current page
        int pageSize = 10;
        int startIndex = (page - 1) * pageSize;
        int endIndex = Math.min(startIndex + pageSize, searchResult.size());
        System.out.println(startIndex);
        System.out.println(searchResult.size());

        // Get the accounts for the current page
        List<User> currentPageUsers = searchResult.subList(startIndex, endIndex);
        System.out.println(page);

        // Calculate the total number of pages
        int totalPages = (searchResult.size() + pageSize - 1) / pageSize;

        session.setAttribute("allAccount", currentPageUsers);
        session.setAttribute("totalPages", totalPages);
        session.setAttribute("currentPage", page);
        session.setAttribute("searchQuery", searchQuery);
        session.setAttribute("searchType", searchType);
        request.getRequestDispatcher("accountManage.jsp").forward(request, response);
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
        processRequest(request, response);
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
