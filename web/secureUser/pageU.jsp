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
        <h1>Новая JSP страница для прав USER!</h1>
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
        <a href="tz.jsp">Техническое задание</a>
        
    </body>
</html>
