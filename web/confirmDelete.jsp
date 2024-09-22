<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Confirm Delete Account</title>
        <style>
            body {
                font-family: "Poppins", sans-serif;
                background-color: white;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .container {
                max-width: 500px;
                background-color: #fff;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 10px 30px rgba(0, 0, 0.1, 0.3);
                border: 1px solid #e3e4e8;
                text-align: center;
                transition: transform 0.3s ease;
            }

            .container:hover {
                transform: scale(1.02);
            }

            h1 {
                font-size: 22px;
                color: palevioletred;
                margin-bottom: 20px;
                font-weight: 600;
            }

            .highlight-email {
                font-size: 18px;
                color: #333;
                margin-bottom: 30px;
                font-weight: bold;
            }

            .actions {
                display: flex;
                justify-content: space-between;
            }

            button {
                padding: 15px 30px;
                background-color: palevioletred;
                color: #fff;
                border: none;
                border-radius: 8px;
                font-size: 14px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                font-weight: bold;
            }

            button:hover {
                background-color: burlywood;
            }

            .cancel-btn {
                background-color: #ff4d4d;
                margin-left: 20px;
            }

            .cancel-btn:hover {
                background-color: #ff6666;
            }

            form {
                display: inline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Are you sure you want to delete</h1>
            <p class="highlight-email">${sessionScope.account.acc_email}?</p>
            <div class="actions">
                <form action="DeleteUserServlet" method="post">
                    <button type="submit">Yes, delete my account</button>
                </form>
                <form action="userInfo.jsp" method="get">
                    <button type="submit" class="cancel-btn">No, go back</button>
                </form>
            </div>
        </div>
    </body>
</html>
