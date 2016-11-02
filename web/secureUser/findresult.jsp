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
    <%
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
            out.println("<body>");
            out.println("<table border=\"1\">");
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
            out.println(" </body>");
            myResultSet.close();
        }
    %>
</html>
