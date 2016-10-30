<%-- 
    Document   : index
    Created on : 22.10.2016, 13:06:33
    Author     : kapitanssb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
        <script language="JavaScript">
<!--
            function sayHello()
            {
                var now = new Date();
                var hours = now.getHours()
                var divider = ":";
                if (now.getMinutes() < 10)
                    divider = ":0";
                var time = "" + hours + divider + now.getMinutes();
                document.write("Сейчас <b>" + time + "</b> и мы желаем Вам");
                if (hours < 5 || hours > 19)
                    document.write(" спокойной ночи!");
                    //document.write(now);
                else if (hours < 11)
                    document.write(" доброго утра!");
                else
                    document.write(" хорошей работы!");
            }
// -->
        </script>
        <title>Добро пожаловать!</title>
    </head>
    <body>
        <img src="герб.PNG" width="296" height="327" alt="герб"/>
        <br>
        <script type="text/javascript">
            document.write(Date());
        </script>
        <br>
        <script type="text/javascript">
            sayHello();
            </script>
        <h1>Добро пожаловать!</h1>
        <br>
        <p>Если Вы Сайков,администратор сайта или получили пароль категории ADMIN то Вам <a href="secureAdmin/pageA.jsp">нужно сюда...</a></p>
        <p>Если Вы представитель ПАО МОЭСК, то Вам <a href="secureUser/pageU.jsp" >сюда...</a></p>
        <p><a href="mailto:sergey@saikov.club">Если Вы не имеете регистрационных данных, то Вы можете их запросить по электронной почте</a></p>
    </body>
</html>
