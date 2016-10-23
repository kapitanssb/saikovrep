<%-- 
    Document   : login
    Created on : 19.10.2016, 19:13:07
    Author     : kapitanssb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
        <title>Вход на мой сайт</title>
    </head>
    <body>
        <img src="../герб.PNG" width="296" height="327" alt="герблог"/>
        <h1>Вход на мой сайт</h1>
        <form action="j_security_check" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td><p align="right"> Имя пользователя :</p></td>
                        <td><p align="center"><input type="text" name="j_username"></p></td>
                    </tr>
                    <tr>
                        <td><p align="right"> Пароль :</p></td>
                        <td><p align="center"><input type="password" name="j_password"></p></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Войти">
        </form>

        <%--
        <form action="j_security_check" method="POST">
            <p align="left"> Имя пользователя:
                <input type="text" name="j_username"><br></p>
            <p>Пароль:
                <input type="password" name="j_password"></p>
            <br>
            <input type="submit" value="Отправить">
        </form>
        --%>
    </body>
</html>
