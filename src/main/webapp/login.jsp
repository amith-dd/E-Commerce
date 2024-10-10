<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        /* Background image styling */
        body {
            background-image: url('index.jpg'); /* Add the path to your background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
        }
        
        <div class="animate-spin rounded-full h-8 w-8 border-t-2 border-b-2 border-blue-500"></div>
        
    </style>
</head>
<body class="flex items-center justify-center h-screen">

    <div class=" p-10 rounded-lg shadow-lg"> <!-- No background box -->
        <h2 class="text-4xl font-bold text-center mb-6">LOGIN PAGE</h2>

        <form action="login" method="post" class="space-y-4">
            <div>
                <label for="email" class="block text-lg font-semibold">EMAIL:</label>
                <input type="text" name="email" id="email" class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
            </div>

            <div>
                <label for="password" class="block text-lg font-semibold">PASSWORD:</label>
                <input type="password" name="password" id="password" class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
            </div>
            
            <!-- Displaying error message if it exists -->
            <%
                String message = (String) request.getAttribute("message");
                if (message != null) {
            %>
            <h3 class="text-red-500 text-center font-semibold"><%= message %></h3>
            <%
                }
            %>
            
            <div class="text-center">
                <input type="submit" value="Login" class="w-full bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-lg cursor-pointer">
            </div>
        </form>
    </div>

</body>
</html>
