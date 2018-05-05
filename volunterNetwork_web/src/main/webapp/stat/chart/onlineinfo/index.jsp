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
                chart.startDuration = 0.5;
                chart.balloon.color = "#000000";

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.fillAlpha = 1;
                categoryAxis.fillColor = "#FAFAFA";
                categoryAxis.labelRotation = 38;
                categoryAxis.dashLength = 5;
                categoryAxis.gridPosition = "start";
                //categoryAxis.position = "top";

                
               
                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.title = "";
                valueAxis.dashLength = 5;
                valueAxis.axisAlpha = 0;
                valueAxis.minimum = 1;
                valueAxis.maximum = 1000;
                valueAxis.integersOnly = true;
                valueAxis.gridCount = 10;
                valueAxis.reversed = false; // this line makes the value axis reversed
                chart.addValueAxis(valueAxis);

               

                // Germany graph
                var graph = new AmCharts.AmGraph();
                graph.title = "时长";
                graph.valueField = "amount";
                graph.balloonText = "[[category]]: 时长[[value]]小时";
                graph.bullet = "round";
                chart.addGraph(graph);

                // United Kingdom graph
                var graph = new AmCharts.AmGraph();
                graph.title = "人数";
                graph.valueField = "menNum";
                graph.balloonText = "[[category]]: 人数[[value]]人";
                graph.bullet = "round";
                chart.addGraph(graph);

                // CURSOR
                var chartCursor = new AmCharts.ChartCursor();
                chartCursor.cursorPosition = "mouse";
                chartCursor.zoomable = false;
                chartCursor.cursorAlpha = 0;
                chart.addChartCursor(chartCursor);

                // LEGEND
                var legend = new AmCharts.AmLegend();
                legend.useGraphSettings = true;
                chart.addLegend(legend);

                // WRITE
                chart.write("chartdiv");
            });
        </script>
    </head>

    <body>
    	<div style="font-family:微软雅黑;font-size: 16px;font-weight: bold;width: 200px;margin: 0 auto;">人员/时长统计情况</div>
        <div id="chartdiv" style="width: 100%; height: 500px;"></div>
    </body>

</html>