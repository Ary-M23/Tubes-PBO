/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author refan
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    
    private static final String URL = "jdbc:mysql://localhost:3306/hotel_management_system"; // URL Database Anda
    private static final String USER = "hotel_management"; // Username database
    private static final String PASSWORD = ""; // Password database (sesuaikan dengan password Anda)

    public static Connection getConnection() throws SQLException {
        try {
            // Register driver MySQL JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Membuat koneksi ke database
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            throw new SQLException("Koneksi ke database gagal", e);
        }
    }
}

