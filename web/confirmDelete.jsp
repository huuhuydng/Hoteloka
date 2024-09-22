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
                background-color: rgb(226, 226, 226);
            }

            .container {
                max-width: 600px;
                margin: 50px auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            }

            h1 {
                text-align: center;
                color: #34AF6D;
                margin-bottom: 20px;
            }

            .actions {
                display: flex;
                justify-content: space-between;
                margin-top: 20px;
            }

            button {
                padding: 10px 20px;
                background-color: #34AF6D;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            button:hover {
                background-color: #4AD489;
            }

            .cancel-btn {
                background-color: #ff4d4d;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Are you sure you want to delete </h1>
            <h1 style="color: black; font-weight: 600">${sessionScope.account.acc_email}?</h1>
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
