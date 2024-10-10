<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        /* Background image styling */
        body {
            background-image: url('index.jpg'); /* Correct path to your background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
        }
         @keyframes fade-in {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    .animate-fade-in {
        animation: fade-in 1s ease-in;
    }
    
     html {
        scroll-behavior: smooth;
    }
    </style>
    
</head>
<body class="flex flex-col items-center justify-center min-h-screen p-8">

    <h2 class="text-4xl font-bold text-center mb-6">HOME PAGE</h2>

    <!-- Product Table -->
    <div class="overflow-x-auto w-full max-w-4xl mb-6">
        <table class="min-w-full bg-white bg-opacity-80 rounded-lg shadow-lg overflow-hidden">
            <thead class="bg-gray-800 text-white">
                <tr>
                    <th class="px-4 py-2">ID</th>
                    <th class="px-4 py-2">Name</th>
                    <th class="px-4 py-2">Brand</th>
                    <th class="px-4 py-2">Category</th>
                    <th class="px-4 py-2">Price</th>
                    <th class="px-4 py-2">Discount</th>
                </tr>
            </thead>
            <tbody class="text-gray-700">

                <% List<Product> products = (List<Product>) request.getAttribute("products"); %>
                <% for(Product p : products) { %>
                    <tr class="border-b">
                        <td class="px-4 py-2"><%= p.getProductId() %></td>
                        <td class="px-4 py-2"><%= p.getProductName() %></td>
                        <td class="px-4 py-2"><%= p.getProductBrand() %></td>
                        <td class="px-4 py-2"><%= p.getProductCategory() %></td>
                        <td class="px-4 py-2"><%= p.getProductPrice() %></td>
                        <td class="px-4 py-2"><%= p.getProductDiscount() %></td>
                    </tr>
                <% } %>

            </tbody>
        </table>
    </div>

    <!-- Add Product Button -->
   <a href="addproduct.jsp" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-lg transition transform hover:scale-105">
    ADD PRODUCT
   </a>

</body>
</html>
