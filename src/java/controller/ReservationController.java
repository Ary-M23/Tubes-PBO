/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import model.Reservation;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */

@WebServlet("/reservation")
public class ReservationController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Ambil data dari form
        String name = request.getParameter("name");
        String checkIn = request.getParameter("checkin");
        String checkOut = request.getParameter("checkout");
        int guests = Integer.parseInt(request.getParameter("guests"));
        String roomType = request.getParameter("room-type");

        // Simpan dalam model Reservation
        Reservation reservation = new Reservation(name, checkIn, checkOut, guests, roomType);

        // Kirim data ke payment.jsp
        request.setAttribute("reservation", reservation);
        request.getRequestDispatcher("payment.jsp").forward(request, response);
    }
}
