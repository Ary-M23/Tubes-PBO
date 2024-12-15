<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pembayaran</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-100">
        <div class="container mx-auto py-10">
            <div class="bg-white shadow-md p-8 rounded-lg">
                <h1 class="text-2xl font-bold mb-6">Pembayaran</h1>
                <%
                    // Ambil metode pembayaran dari parameter URL
                    String paymentMethod = request.getParameter("paymentMethod");
                %>
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