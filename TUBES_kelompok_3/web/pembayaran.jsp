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
                // Ambil metode pembayaran dari parameter URL
                String paymentMethod = request.getParameter("paymentMethod");

                // Cek jika paymentMethod null dan berikan nilai default
                if (paymentMethod == null) {
                    paymentMethod = ""; // Atau bisa diset ke nilai default lain
                }

                // Dapatkan waktu sekarang dan hitung batas waktu pembayaran
                java.util.Calendar calendar = java.util.Calendar.getInstance();
                int currentHour = calendar.get(java.util.Calendar.HOUR_OF_DAY);
                int currentMinute = calendar.get(java.util.Calendar.MINUTE);

                // Tambahkan 1 jam untuk batas pembayaran
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
                    <div class="flex items-center justify-between">
                        <span class="font-medium">No. Pesanan:</span>
                        <span>69</span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Nama Pemesan:</span>
                        <span>Lil Kur</span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Jenis Kamar:</span>
                        <span>Standard</span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Jumlah Orang:</span>
                        <span>90</span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Harga:</span>
                        <span>Rp 500.000</span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Diskon:</span>
                        <span>Tidak ada</span>
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
