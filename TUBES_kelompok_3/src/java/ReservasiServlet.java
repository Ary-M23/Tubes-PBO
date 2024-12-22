/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.SQLException;

/**
 *
 * @author refan
 */
@WebServlet("/reservasi")
public class ReservasiServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Ambil data dari form
        int idPelanggan = Integer.parseInt(request.getParameter("idPelanggan"));
        int idKamar = Integer.parseInt(request.getParameter("idKamar"));
        int idMetodeTunai = Integer.parseInt(request.getParameter("idMetodeTunai"));
        int idMetodeTransfer = Integer.parseInt(request.getParameter("idMetodeTransfer"));
        String idStaff = request.getParameter("idStaff");
        String tanggalReservasi = request.getParameter("tanggalReservasi");

        // Buat objek Reservasi
        Reservasi reservasi = new Reservasi(idPelanggan, idKamar, idMetodeTunai, idMetodeTransfer, idStaff, tanggalReservasi);

        try {
            // Simpan ke database
            reservasi.saveToDatabase();

            // Redirect atau tampilkan halaman konfirmasi
            response.sendRedirect("konfirmasi.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Terjadi kesalahan saat menyimpan data reservasi.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}

