<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="design.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex flex-col items-center mt-2 min-h-screen p-4"> <!-- Added margin-top to avoid navbar overlap -->

    <!-- Form box with consistent design -->
    <div class="p-6 rounded-lg shadow-lg w-full max-w-sm bg-white bg-opacity-80"> <!-- Reduced padding and width -->
        <h1 class="text-3xl font-bold text-center mb-6">Edit Product</h1> <!-- Reduced heading size -->

        <% Product p = (Product)request.getAttribute("product"); %>

        <form action="update" method="post" class="space-y-4">
            <!-- Product ID -->
            <div>
                <label for="id" class="block text-base font-semibold">ID:</label> <!-- Reduced label text size -->
                <input type="text" readonly name="id" id="id" value="<%= p.getProductId() %>" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Reduced input padding -->
            </div>

            <!-- Product Name -->
            <div>
                <label for="name" class="block text-base font-semibold">NAME:</label> <!-- Reduced label text size -->
                <input type="text" name="name" id="name" value="<%= p.getProductName() %>" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Reduced input padding -->
            </div>

            <!-- Brand -->
            <div>
                <label for="brand" class="block text-base font-semibold">BRAND:</label> <!-- Reduced label text size -->
                <input type="text" name="brand" id="brand" value="<%= p.getProductBrand() %>" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Reduced input padding -->
            </div>

            <!-- Category -->
            <div>
                <label for="category" class="block text-base font-semibold">CATEGORY:</label> <!-- Reduced label text size -->
                <input type="text" name="category" id="category" value="<%= p.getProductCategory() %>" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Reduced input padding -->
            </div>

            <!-- Price -->
            <div>
                <label for="price" class="block text-base font-semibold">PRICE:</label> <!-- Reduced label text size -->
                <input type="text" name="price" id="price" value="<%= p.getProductPrice() %>" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Reduced input padding -->
            </div>

            <!-- Discount -->
            <div>
                <label for="discount" class="block text-base font-semibold">DISCOUNT:</label> <!-- Reduced label text size -->
                <input type="text" name="discount" id="discount" value="<%= p.getProductDiscount() %>" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Reduced input padding -->
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <input type="submit" value="Update Product" class="w-full bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-lg cursor-pointer transition transform hover:scale-105 duration-300 ease-in-out">
            </div>
        </form>
    </div>

</body>
</html>
