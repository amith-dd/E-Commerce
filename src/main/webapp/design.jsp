<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Common Design</title>
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

<!-- Navbar -->
<nav class="w-full bg-gray-800 text-white p-4 shadow-lg fixed top-0 flex justify-between items-center">
    <div class="flex items-center space-x-4">
        <a href="home.jsp" class="text-xl font-bold hover:text-blue-400"> <img src="logo.png" alt="App Store Logo" class="h-10"> <!-- Adjust height as necessary --></a>
        <a href="profile.jsp" class="hover:text-blue-400">Profile</a>
        <a href="orders.jsp" class="hover:text-blue-400">Orders</a>
        <a href="notifications.jsp" class="hover:text-blue-400">Notifications</a>
        <a href="addproduct.jsp" class="hover:text-blue-400">Add Product</a>
        <a href="addcategory.jsp" class="hover:text-blue-400">Add Category</a>
    </div>
    <div>
        <a href="logout" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded-lg transition transform hover:scale-105">
            Logout
        </a>
    </div>
</nav>

<!-- Adding some space below navbar -->
<div class="pt-16 w-full flex flex-col items-center justify-center">
</div>

