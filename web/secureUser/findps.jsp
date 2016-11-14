<%-- 
    Document   : findps
    Created on : 30.10.2016, 10:49:32
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

        <title>Поиск ПС на карте</title>
    </head>
    <body>
        <form action="findresult.jsp">
            <h1>Введите данные для поиска ПС</h1>
            <table border="0">
                <tbody>
                    <tr>
                        <td align="right">Введите номер ТП или буквы населенного пункта :</td>
                        <td align="center"><input type="text" name="numbertp" value="" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Поиск" name="findbutton" />
        </form>
        <%--Далее мы должны получить введенные данные--%>

    </body>
</html>
