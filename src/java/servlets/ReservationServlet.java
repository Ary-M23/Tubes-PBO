package servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import controllers.ReservationController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String tanggalReservasi = request.getParameter("checkin");
        int idKamar = Integer.parseInt(request.getParameter("room-type"));
        int idPelanggan = 1; // Dummy data
        int idMetodeTunai = 0;
        int idMetodeTransfer = 1; // Dummy data
        String idStaff = "admin"; // Dummy data

        ReservationController controller = new ReservationController();
        controller.createReservation(idPelanggan, idKamar, idMetodeTunai, idMetodeTransfer, idStaff, tanggalReservasi);

        response.sendRedirect("pembayaran.jsp");
    }
}