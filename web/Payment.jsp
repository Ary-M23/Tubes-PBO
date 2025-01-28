<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pembayaran</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
        <style>
            body {
                background: linear-gradient(to right, #696969, #D3D3D3, #696969);
            }
        </style>
    </head>
    <body>
        <header style="background-color: #f5e4c8; padding: 16px; border-radius: 8px; margin-bottom: 16px;">
            <h1 class="text-2xl font-bold mb-2">Pembayaran</h1>
            <%
                // Ambil data dari servlet
                String paymentMethod = (String) request.getAttribute("paymentMethod");
                String name = (String) request.getAttribute("name");
                String roomType = (String) request.getAttribute("roomType");
                String tanggalReservasi = (String) request.getAttribute("tanggalReservasi");

                // Default nilai jika atribut tidak ada
                if (paymentMethod == null) paymentMethod = "Metode tidak diketahui";
                if (name == null) name = "Nama tidak diketahui";
                if (roomType == null) roomType = "Jenis kamar tidak diketahui";
                if (tanggalReservasi == null) tanggalReservasi = "Tanggal tidak diketahui";

                // Dapatkan waktu sekarang dan hitung batas waktu pembayaran
                java.util.Calendar calendar = java.util.Calendar.getInstance();
                calendar.add(java.util.Calendar.HOUR_OF_DAY, 1);
                int deadlineHour = calendar.get(java.util.Calendar.HOUR_OF_DAY);
                int deadlineMinute = calendar.get(java.util.Calendar.MINUTE);
            %>
            <p class="text-lg text-red-600 font-bold">
                Segera lakukan pembayaran sebelum pukul <%= String.format("%02d:%02d", deadlineHour, deadlineMinute) %>
            </p>
        </header>
        <div class="container mx-auto py-10">
            <div class="bg-white shadow-md p-8 rounded-lg">
                <div class="space-y-6">
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Metode Pembayaran:</span>
                        <% if (paymentMethod.equals("qris")) { %>
                            <div class="flex items-center">
                                <img src="images/qris.png" class="w-12 h-12 mr-2">
                                <span>QRIS</span>
                            </div>
                        <% } else if (paymentMethod.equals("bri")) { %>
                            <div>
                                <span>Transfer Bank BRI</span>
                                <p class="text-gray-600">No. Rekening: 69</p>
                            </div>
                        <% } else if (paymentMethod.equals("mandiri")) { %>
                            <div>
                                <span>Transfer Bank Mandiri</span>
                                <p class="text-gray-600">No. Rekening: 69</p>
                            </div>
                        <% } else { %>
                            <p>Metode pembayaran tidak tersedia.</p>
                        <% } %>
                    </div>
<<<<<<<< HEAD:build/web/jsp/pembayaran.jsp
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Nama Pemesan:</span>
                        <span><%= name %></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Tanggal Check-in:</span>
                        <span><%= tanggalReservasi %></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Jenis Kamar:</span>
                        <span><%= roomType %></span>
========
                    <jsp:useBean id="reservation" class="model.Reservation" scope="request" />
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Nama Pemesan:</span>
                        <span><%= reservation.getName() %></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Check-in:</span>
                        <span><%= reservation.getCheckIn() %></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Check-out:</span>
                        <span><%= reservation.getCheckOut() %></span>
>>>>>>>> e80f3bf142c61589b63433e5ce2fcae43686b57a:web/Payment.jsp
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Jumlah Tamu:</span>
                        <span><%= reservation.getGuests() %></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Tipe Kamar:</span>
                        <span><%= reservation.getRoomType() %></span>
                    </div>
                    <div class="flex items-center justify-between font-bold text-2xl">
                        <span>Total Bayar:</span>
                        <span>Rp 500.000</span>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
