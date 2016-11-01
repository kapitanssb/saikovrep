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
        <%--Скрипт нажатия кнопки--%>
        <script type="text/javascript">
            function myclick() {
                //alert("ssdasdfasfsdf");
                document.write("<h1>Сообщение</h1>");
            }
            ;
        </script>
       
        <title>Поиск ПС на карте</title>
    </head>
    <body>
        <h1>Введите данные для поиска ПС</h1>
        <table border="0">
            <tbody>
                <tr>
                    <td align="right">Введите номер ТП :</td>
                    <td align="center"><input type="text" name="numbertp" value="" /></td>
                </tr>
                <tr>
                    <td align="right">Введите тип ТП :</td>
                    <td align="left"><select name="tptype">
                            <option>ТП</option>
                            <option>РП</option>
                            <option>КТП</option>
                            <option>МТП</option>
                            <option>БМКТП</option>
                            <option>СТП</option>
                        </select></td>
                </tr>
            </tbody>
        </table>
        <input type="submit" onclick="myclick()" value="Поиск" name="findbutton" />
        
        <%--Далее мы должны получить введенные данные--%>
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
                ResultSet myResultSet = myStatement.executeQuery("select * from new_table");
                while (myResultSet.next()) {
                    out.println(myResultSet.getString("name") + " ----- " + myResultSet.getString("city") + "<BR>");
                    //out.println("/r/n");
                    //out.append("ssss");
                }
                myResultSet.close();
            }
%>

    </body>
</html>
