<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Aplikasi Pemesanan Hotel</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@/components/ui/dist/styles.css">
    <style>
        .hotel-item {
            position: relative;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
        }

        .hotel-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
            background-image: linear-gradient(to bottom right, rgb(0, 255, 0), rgb(0, 0, 255), rgb(255, 0, 0));
        }

        .hotel-item:hover .hotel-content,
        .hotel-item:hover .hotel-price {
            color: white;
        }
        
        body {
            background-image: url('images/hotel aja hotel.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>
</head>
<body>
    <div class="container mx-auto py-10">
        <header class="bg-white shadow-md p-4 rounded-lg">
            <h1 class="text-2xl font-bold">Aplikasi Pemesanan Hotel</h1>
        </header>
        
        <main class="mt-8">
            <h2 class="text-xl font-bold mb-4">List Hotel</h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-5 gap-4">
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 1</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 500.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 2</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 550.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 3</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 600.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 4</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 650.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 5</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 700.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 6</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 750.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 7</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 800.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 8</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 850.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 9</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 900.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="reservasi.jsp" class="block">
                        <img src="/api/placeholder/300/200" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Hotel 10</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 950.000</span>
                        </div>
                    </a>
                </div>
            </div>
        </main>
    </div>
</body>
</html>