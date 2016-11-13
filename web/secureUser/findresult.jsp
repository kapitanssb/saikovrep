<%-- 
    Document   : findresult
    Created on : 01.11.2016, 22:57:49
    Author     : kapitanssb
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="test.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />

        <title>Форма ответа на поиск</title>

    </head>
    <body>
        <%
            String test = "test";

            //Определяем данные которые ввел пользователь
            CharSequence numbertp = request.getParameter("numbertp");

            DbManager db = new DbManager();
            Connection conn = db.getConnection();
            if (conn == null) {
                //Не удачно
                out.print("Соединение с БД прошло не удачно! Все очень херово!");
            } else {
                //Все хорошо
                //out.println("Соединение с БД удачно! Все зачепись!" + "<BR>");
                //out.println("<body>");
                out.println("<table id=\"main\" border=\"1\">");
                out.println("<tbody>");

                out.println("<h4>Результат для *" + numbertp + "*</h4>" + "<BR><BR>");
                Statement myStatement = conn.createStatement();
                ResultSet myResultSet = myStatement.executeQuery("select * from new_table where (city like '%" + numbertp.toString() + "%')"
                        + " or (name like '%" + numbertp.toString() + "%')");
                int step = 0;
                while (myResultSet.next()) {
                    //out.println(myResultSet.getString("name") + " ----- " + myResultSet.getString("city") + "<BR>");
                    step++;
                    out.println("<tr>");
                    out.println("<td>" + step + "</td>");
                    out.println("<td>" + myResultSet.getString("name") + "</td>");
                    out.println("<td>" + myResultSet.getString("city") + "</td>");
                    out.println("<td>" + myResultSet.getString("coorda") + "</td>");
                    out.println("<td>" + myResultSet.getString("coordb") + "</td>");
                    out.println("<tr>");
                }
                out.println("</tbody>");
                out.println("</table>");
                if (step == 0) {
                    out.print("Нет результатов");
                }
                //out.print("<BR><div id=\"map\" style=\"width: 600px; height: 400px\"></div>");
                //out.println(" </body>");
                myResultSet.close();
                int temp = 34;
            }
        %>

        <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
        <script type="text/javascript">
            ymaps.ready(init);
            var myMap,
                    myPlacemark;

            function init() {
                var jstest = "test";

                myMap = new ymaps.Map("map", {
                    center: [55.76, 37.64],
                    zoom: 7
                });


                //Количество строк в таблице
                var rowcount = main.rows.length / 2;
                var coorda, coordan, coordbn, coordb, step, step1, name, step2;
                step = 3;
                step1 = 4;
                step2 = 1;
                for (var i = 0; i < rowcount; i++) {//Перебираем всю таблицу
                    coordan = document.getElementsByTagName('td')[step].innerHTML;
                    coorda = coordan.replace(",", ".");
                    step = step + 5;
                    coordbn = document.getElementsByTagName('td')[step1].innerHTML;
                    coordb = coordbn.replace(",", ".");
                    step1 = step1 + 5;
                    name = document.getElementsByTagName('td')[step2].innerHTML;
                    step2 = step2 + 5;
                    //alert(coorda + '  ' + coordb);
                    myPlacemark = new ymaps.Placemark([coorda, coordb], {
                        hintContent: name,
                        balloonContent: name
                    });
                    myMap.geoObjects.add(myPlacemark);
                }


            }</script>



        <BR><div id="map" style="width: 600px; height: 400px"></div>
    </body>
</html>
