<%-- 
    Document   : pageU
    Created on : 22.10.2016, 13:04:29
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
        <title>Для представителей ПАО МОЭСК</title>
    </head>
    <body>
        <img src="../moesk.jpg" width="250" height="240" alt="moesk"/>

        <h1>Добро пожаловать!</h1>
        <br>
        <h4>Список задач для пользователя :</h4>
        <br>
        <%--
<h1>Будем пытаться соединиться с БД MySQL</h1>
        <h4>БД MySQL, называется voprosydb, таблица называется mytable1</h4>
        <%
            DbManager db = new DbManager();
            Connection conn = db.getConnection();
            if (conn == null) {
                //Не удачно
                out.print("Соединение с БД прошло не удачно! Все очень херово!");
                //System.exit(-100);
            } else {
                //Все хорошо
                out.println("Соединение с БД удачно! Все зачепись!");
                Statement myStatement = conn.createStatement();
                ResultSet myResultSet = myStatement.executeQuery("select * from mytable1");
                while (myResultSet.next()) {
                    out.println(myResultSet.getString("vopros") + " ответ " + myResultSet.getString("otvet"));
                    out.println("/r/n");
                    //out.append("ssss");
                }
                myResultSet.close();
            }
%>--%>
        <p><a href="tz.jsp">Техническое задание</a></p><br>
        <p><a href="../datas/ip/ip.xlsx" download>Скачать ИП файл...</a><br>
            <a href="../datas/ip/ip.htm" >Просмотреть ИП файл в броузере...</a>
        </p>
        Поопорные схемы:
        <a href="../secureUser/schemas/vl610.jsp">ВЛ 6-10 кВ...</a>
        <a href="../secureUser/schemas/vl04.jsp">ВЛ-0,4 кВ...</a>
        <a href="../secureUser/schemas/ztprp.jsp">ЗТП, РП...</a>
        <a href="../secureUser/schemas/mtpktp.jsp">МТП, КТП...</a>
        <a href="../secureUser/schemas/obolensk.jsp">Оболенск...</a>
        <%--<a href="../datas/shemas/ВЛ-0,4 кВ с БМКТП-603 Липицы.pdf" >ВЛ-0,4 кВ с БМКТП-603 Липицы...</a>--%>
    </body>
</html>
