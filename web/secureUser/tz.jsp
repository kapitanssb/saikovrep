<%-- 
    Document   : tz
    Created on : 22.10.2016, 20:21:50
    Author     : kapitanssb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
        <title>Техническое задание</title>
    </head>
    <body>
        <h1>Введите данные, для генерации ТЗ</h1>
        <form name="tzform" action="resulttz.jsp">
            Номер SAP:
            <p><input type="text" name="SAP" value="" size="100" /></p>
            Титул :
            <p><input type="text" name="TITUL" value="" size="100" /></p>
            Населенный пункт :
            <p><input type="text" name="PUNKT" value="д. " size="100" /></p>
            Заказчик :
            <p><input type="text" name="ZAKAZCHIK" value="" size="100" /></p>
            Номер ТУ :
            <p><input type="text" name="TUNOMER" value="" size="100" /></p>
            Дата ТУ :
            <p><input type="text" name="TUDATA" value="" size="100" /></p>
            Мощность :
            <p><input type="text" name="MOSH" value="15" size="100" /></p>
            Напряжение :
            <p><input type="text" name="NAPR" value="0,38" size="100" /></p>
            Категория надежности :
            <p><input type="text" name="KAT" value="III" size="100" /></p>
            Тип ТП :
            <p><input type="text" name="TPTYPE" value="" size="100" /></p>
            Номер ТП :
            <p><input type="text" name="TPNUMBER" value="" size="100" /></p>
            Дистанция :
            <p><input type="text" name="DISTANCE" value="" size="100" /></p>
            Инвентарный номер :
            <p><input type="text" name="INVENTAR" value="" size="100" /></p>
            Марка проводника :
            <p><input type="text" name="SIP" value="СИП-3 4х70" size="100" /></p>
            Что строим (ВЛИ/КЛ):
            <p><input type="text" name="WHATPROJECT" value="ВЛИ" size="100" /></p>
            К чему присоединяем (ВЛИ/КЛ/РУ) :
            <p><input type="text" name="WHATCONNECT" value="ВЛИ" size="100" /></p>
            От существующей линии, или от проектируемой (СУЩ/ПРОЕКТ/РУ):
            <p><input type="text" name="ABSENT" value="СУЩ" size="100" /></p>
            Год :
            <p><input type="text" name="YEAR" value="2016" size="100" /></p>
            <textarea name="OBEM" rows="4" cols="100">
            </textarea>
            <br>
            Подрядная организация :
            <p><input type="text" name="PODRADCHIK" value="ООО Дэк Строй" size="100" /></p>
            Объект строительства(ж/д) :
            <p><input type="text" name="OBJECTSTR" value="ж/д" size="100" /></p>
            <input type="submit" value="Генерировать ТЗ" name="gen" onclick="resulttz.jsp"/>
        </form>
    </body>
</html>
