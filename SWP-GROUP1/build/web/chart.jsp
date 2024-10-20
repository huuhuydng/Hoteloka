<%-- 
    Document   : chart
    Created on : Oct 20, 2024, 4:10:03 PM
    Author     : Hung Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="width: 50%">
            <canvas id="sale-revenue"></canvas>
        </div>
        
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
        </script>
        <script type="text/javascript">
            var chart = document.getElementById("sale-revenue").getContext("2d");
            var myChart = new Chart(chart, {
                type: "line",
                data: {
                    labels: ["06/2024", "07/2024", "08/2024", "09/2024", "10/2024", "11/2024", "12/2024"],
                    datasets: [{
                            label: "Revenue",
                            data: [${requestScope.year062024}, ${requestScope.year072024}, ${requestScope.year082024}, ${requestScope.year092024}, ${requestScope.year102024}, ${requestScope.year112024}, ${requestScope.year122024}],
                            backgroundColor: "rgba(0, 156, 255, .5)"
                        }
                    ]
                },
                options: {
                    responsive: true
                }
            });
        </script>
    </body>
</html>
