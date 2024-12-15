<!DOCTYPE html>
<!--buatkan form isi nama -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservasi Kamar</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
</head>
<body class="bg-gray-100">
    <!-- Header -->
    <header class="relative bg-cover bg-center h-[60vh]" style="background-image: url('images/hotel.jpg');">
        <div class="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center">
            <div class="text-center text-white space-y-4">
                <h1 class="text-4xl md:text-6xl font-bold">Selamat Datang!</h1>
                <p class="text-lg md:text-2xl">Rasakan kenyamanan yang belum pernah ada sebelumnya</p>
            </div>
        </div>
    </header>

    <!-- Reservation Form -->
    <main class="py-10">
        <section class="max-w-4xl mx-auto bg-white p-8 rounded-lg shadow-lg">
            <h2 class="text-2xl font-bold text-gray-800 text-center mb-6">Reservasi Kamar</h2>
            <form action="reservation" method="post" class="space-y-6">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <!-- Check-in -->
                    <div>
                        <label for="checkin" class="block text-gray-700 font-medium">Tanggal Check-in:</label>
                        <input type="date" id="checkin" name="checkin" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    </div>
                    <!-- Check-out -->
                    <div>
                        <label for="checkout" class="block text-gray-700 font-medium">Tanggal Check-out:</label>
                        <input type="date" id="checkout" name="checkout" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    </div>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <!-- Jumlah Tamu -->
                    <div>
                        <label for="guests" class="block text-gray-700 font-medium">Jumlah Tamu:</label>
                        <select id="guests" name="guests" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                            <option value="1">1 Tamu</option>
                            <option value="2">2 Tamu</option>
                            <option value="3">3 Tamu</option>
                            <option value="4">4 Tamu</option>
                            <option value="5">5 Tamu</option>
                            <option value="6">6 Tamu</option>
                        </select>
                    </div>
                    <!-- Tipe Kamar -->
                    <div>
                        <label for="room-type" class="block text-gray-700 font-medium">Tipe Kamar:</label>
                        <select id="room-type" name="room-type" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                            <option value="standard">Standard</option>
                            <option value="deluxe">Deluxe</option>
                            <option value="suite">Suite</option>
                        </select>
                    </div>
                </div>

                <!-- Submit -->
                <div>
                    <button type="button" class="w-full bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 transition" onclick="showPaymentOptions()">
                        Pesan Sekarang
                    </button>
                </div>
            </form>
        </section>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-6 text-center">
        <p>&copy; 2024 Hotel Luxury. All rights reserved.</p>
    </footer>

    <script>
        function showPaymentOptions() {
            let selectedPaymentMethod = null;

            Swal.fire({
                title: 'Pilih Metode Pembayaran',
                html:
                    '<div class="space-y-4">' +
                    '<div class="flex items-center border-2 border-transparent p-2 rounded-lg cursor-pointer" onclick="selectPaymentMethod(this, \'qris\')">' +
                    '<img src="images/qris.png" class="w-12 h-12 mr-4">' +
                    '<span>QRIS</span>' +
                    '</div>' +
                    '<div class="flex items-center border-2 border-transparent p-2 rounded-lg cursor-pointer" onclick="selectPaymentMethod(this, \'bri\')">' +
                    '<img src="images/bri.png" class="w-12 h-12 mr-4">' +
                    '<span>Transfer Bank BRI</span>' +
                    '</div>' +
                    '<div class="flex items-center border-2 border-transparent p-2 rounded-lg cursor-pointer" onclick="selectPaymentMethod(this, \'mandiri\')">' +
                    '<img src="images/mandiri.png" class="w-12 h-12 mr-4">' +
                    '<span>Transfer Bank Mandiri</span>' +
                    '</div>' +
                    '</div>',
                showCancelButton: true,
                confirmButtonText: 'Beli',
                cancelButtonText: 'Batal',
                backdrop: 'rgba(0,0,0,0.4)',
                preConfirm: () => {
                    return selectedPaymentMethod;
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = `pembayaran.jsp?paymentMethod=${selectedPaymentMethod}`;
                }
            });
        }

        function selectPaymentMethod(element, method) {
            const paymentOptions = element.parentNode.querySelectorAll('.flex');
            paymentOptions.forEach((option) => {
                option.classList.remove('border-green-500');
            });
            element.classList.add('border-green-500');
            selectedPaymentMethod = method;
        }
    </script>
</body>
</html>