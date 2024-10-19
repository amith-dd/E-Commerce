<%@page import="dao.AdminDao"%>
<%@page import="dto.Admin"%>
<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ include file="design.jsp" %>
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
<body class="flex flex-col items-center mt-2  min-h-screen p-8">

    <h2 class="text-4xl font-bold text-center mb-6">HOME PAGE</h2>

    <!-- Product Table -->
    <div class="overflow-x-auto w-full max-w-4xl mb-6">
        <table class="min-w-full bg-white bg-opacity-80 rounded-lg shadow-lg overflow-hidden">
            <thead class="bg-gray-800 text-white">
                <tr>
                    <th class="px-4 py-2 text-center">ID</th>
                    <th class="px-4 py-2 text-center">Name</th>
                    <th class="px-4 py-2 text-center">Brand</th>
                    <th class="px-4 py-2 text-center">Category</th>
                    <th class="px-4 py-2 text-center">Price</th>
                    <th class="px-4 py-2 text-center">Discount</th>
                    <th class="px-4 py-2 text-center">EDIT</th>
                    <th class="px-4 py-2 text-center">DELETE</th>
                </tr>
            </thead>
            <tbody class="text-gray-700">
	
				<% 
				   HttpSession httpsession = request.getSession(); 
				   Admin admin = (Admin)httpsession.getAttribute("admin"); 
				   AdminDao dao = new AdminDao();
				   %>
				<% if(admin!=null){ %>
                <% List<Product> products = dao.getAllProducts(admin.getAdminId()); %>
                <% if(products!=null){ %>
                <% for(Product p : products) { %>
                    <tr class="border-b">
                        <td class="px-4 py-2 text-center"><%= p.getProductId() %></td>
                        <td class="px-4 py-2 text-center"><%= p.getProductName() %></td>
                        <td class="px-4 py-2 text-center"><%= p.getProductBrand() %></td>
                        <td class="px-4 py-2 text-center"><%= p.getProductCategory() %></td>
                        <td class="px-4 py-2 text-center"><%= p.getProductPrice() %></td>
                        <td class="px-4 py-2 text-center"><%= p.getProductDiscount() %></td>
                        <td class="px-4 py-2 text-center">
                            <a href="edit?id=<%= p.getProductId() %>" class="bg-gray-200 hover:bg-yellow-500 text-gray-700 font-medium py-1 px-3 rounded-lg transition transform hover:scale-105 hover:shadow-lg duration-300 ease-in-out">
                                EDIT
                            </a>
                        </td>
                        <td class="px-4 py-2 text-center">
                            <a href="delete?id=<%= p.getProductId() %>" class="bg-gray-200 hover:bg-red-500 text-gray-700 hover:text-white font-medium py-1 px-3 rounded-lg transition transform hover:scale-105 hover:shadow-lg duration-300 ease-in-out">
                                DELETE
                            </a>
                        </td> 
                    </tr>
                <% } %>
                <%}else{ %>
                	<% request.setAttribute("message", "login required");
                	request.getRequestDispatcher("login.jsp").forward(request, response); %>
                <% } %>
                 <%}else{ %>
                	<% request.setAttribute("message", "login required");
                	request.getRequestDispatcher("login.jsp").forward(request, response); %>
                <% } %>

            </tbody>
        </table>
    </div>

   

</body>
</html>
