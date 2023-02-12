/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.common;

import entity.Apartment;
import entity.ApartmentImgBanner;
import entity.Roomtype;
import entity.RoomtypeImgBanner;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import service.ApartmentImgBannerService;
import service.ApartmentService;
import service.RoomtypeImgBannerService;
import service.RoomtypeService;

/**
 *
 * @author DELL
 */
@WebServlet(name = "PageHomepageController", urlPatterns = {"/homepage"})
public class PageHomepageController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            ApartmentService apartmentService = new ApartmentService();
            ApartmentImgBannerService apartmentImgBannerService = new ApartmentImgBannerService();
            RoomtypeService roomtypeService = new RoomtypeService();
            RoomtypeImgBannerService roomtypeImgBannerService = new RoomtypeImgBannerService();

            int apartmentId = Integer.parseInt(request.getParameter("apartmentId"));
            Apartment apartment = apartmentService.getOne(apartmentId, true);

            List<ApartmentImgBanner> apartmentImgBanners = apartmentImgBannerService.getAll(apartmentId);
            List<Roomtype> roomtypes = roomtypeService.getAll(apartmentId);

            List<RoomtypeImgBanner> allRoomtypeImgBanner = new ArrayList<>();

            for (Roomtype roomtype : roomtypes) {
                List<RoomtypeImgBanner> roomtypeImgBanners = roomtypeImgBannerService.getAll(roomtype.getRoomtypeId());
                for (RoomtypeImgBanner roomtypeImg : roomtypeImgBanners) {
                    allRoomtypeImgBanner.add(roomtypeImg);
                }
            }
            System.out.println(allRoomtypeImgBanner);

            request.setAttribute("apartment", apartment);
            request.setAttribute("apartmentImgBanners", apartmentImgBanners);

            request.setAttribute("roomtypes", roomtypes);
            request.setAttribute("roomtypeImgBanners", allRoomtypeImgBanner);

            request.getRequestDispatcher("homepage.jsp").forward(request, response);
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
