<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="design.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Category</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex flex-col items-center mt-2 min-h-screen p-4"> <!-- Added margin-top to avoid navbar overlap -->

    <!-- Form box with consistent design -->
    <div class="p-6 rounded-lg shadow-lg w-full max-w-sm bg-white bg-opacity-80"> <!-- Reduced padding and width -->
        <h1 class="text-3xl font-bold text-center mb-6">Add Category</h1> <!-- Form Title -->

        <form action="addcategory" method="post" class="space-y-4">
            <!-- ID -->
            <div>
                <label for="id" class="block text-base font-semibold">ID:</label> <!-- Label styling -->
                <input type="text" name="id" id="id" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Input styling -->
            </div>

            <!-- Category -->
            <div>
                <label for="category" class="block text-base font-semibold">CATEGORY:</label> <!-- Label styling -->
                <input type="text" name="category" id="category" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Input styling -->
            </div>

            <!-- Sub-category -->
            <div>
                <label for="subcategory" class="block text-base font-semibold">SUB-CATEGORY:</label> <!-- Label styling -->
                <input type="text" name="subcategory" id="subcategory" class="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required> <!-- Input styling -->
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <input type="submit" value="Add Category" class="w-full bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-lg cursor-pointer transition transform hover:scale-105 duration-300 ease-in-out">
            </div>
        </form>
    </div>

</body>
</html>
