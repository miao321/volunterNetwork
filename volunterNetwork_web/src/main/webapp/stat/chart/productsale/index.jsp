<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>amCharts examples</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style4.css" type="text/css">
        <script src="${pageContext.request.contextPath}/components/amchartNew/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/components/amchartNew/amcharts/serial.js" type="text/javascript"></script>

        <script>
            var chart;

            var chartData = ${result};


            AmCharts.ready(function () {
                // SERIAL CHART
                chart = new AmCharts.AmSerialChart();
                chart.dataProvider = chartData;
                chart.categoryField = "college";
                // the following two lines makes chart 3D
                chart.depth3D = 20;
                chart.angle = 30;

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.title = "学院";
                categoryAxis.labelRotation = 90;
                categoryAxis.dashLength = 5;
                categoryAxis.gridPosition = "start";

                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.title = "小时";
                valueAxis.dashLength = 5;
                chart.addValueAxis(valueAxis);

                // GRAPH
                var graph = new AmCharts.AmGraph();
                graph.valueField = "amount";
                graph.colorField = "color";
                graph.balloonText = "<span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
                graph.type = "column";
                graph.lineAlpha = 0;
                graph.fillAlphas = 1;
                chart.addGraph(graph);

                // CURSOR
                var chartCursor = new AmCharts.ChartCursor();
                chartCursor.cursorAlpha = 0;
                chartCursor.zoomable = false;
                chartCursor.categoryBalloonEnabled = false;
                chart.addChartCursor(chartCursor);

                chart.creditsPosition = "top-right";


                // WRITE
                chart.write("chartdiv");
            });
        </script>
    </head>

    <body>
        <div id="chartdiv" style="width: 100%; height: 400px;margin-top: 40px;"></div>
    </body>

</html>