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
            <p>
                Номер SAP:
                <input type="text" name="SAP" value="" size="20" /><br><br>
                Титул :
                <input type="text" name="TITUL" value="" size="90" /><br><br>
                Населенный пункт :
                <input type="text" name="PUNKT" value="д. " size="20" /><br><br>
                Заказчик :
                <input type="text" name="ZAKAZCHIK" value="" size="87" /><br><br>
                Номер ТУ :
                <input type="text" name="TUNOMER" value="" size="30" />
                Дата ТУ :
                <input type="text" name="TUDATA" value="" size="30" /><br><br>
            </p>

            <p>
                Мощность :
                <select name="MOSH">
                    <option>15</option>
                    <option>14</option>
                    <option>13</option>
                    <option>12</option>
                    <option>11</option>
                    <option>10</option>
                    <option>9</option>
                    <option>8</option>
                    <option>7</option>
                    <option>6</option>
                    <option>5</option>
                    <option>4</option>
                    <option>3</option>
                    <option>2</option>
                    <option>1</option>
                </select>

                Напряжение :            
                <select name="NAPR">
                    <option>0.38</option>
                    <option>0.22</option>
                </select>

                Категория надежности :
                <select name="KAT">
                    <option>III</option>
                    <option>II</option>
                    <option>I</option>
                </select>

                Тип ТП :
                <select name="TPTYPE">
                    <option>МТП</option>
                    <option>КТП</option>
                    <option>БМКТП</option>
                    <option>СТП</option>
                    <option>ТП</option>
                </select>
                <br>
                <br>
                Номер ТП :
                <input type="text" name="TPNUMBER" value="" size="10" />
            </p>
            <p>
                Дистанция :
                <input type="text" name="DISTANCE" value="" size="10" />
                Инвентарный номер :
                <input type="text" name="INVENTAR" value="" size="20" /><br><br>
                Марка проводника :
                <input type="text" name="SIP" value="СИП-3 4х70" size="20" />
            </p>
            <br>
            Что строим :
            <select name="WHATPROJECT">
                <option>ВЛИ</option>
                <option>КЛ</option>
            </select>
            К чему присоединяем :
            <select name="WHATCONNECT">
                <option>ВЛИ</option>
                <option>КЛ</option>
                <option>РУ</option>
            </select>
            От сущ. линии, или от проект.:
            <select name="ABSENT">
                <option>СУЩ</option>
                <option>ПРОЕКТ</option>
                <option>РУ</option>
            </select>
            <br>
            <br>

            Год :
            <input type="text" name="YEAR" value="2016" size="5" />

            <%--
            <textarea name="OBEM" rows="4" cols="100">
            </textarea>
            <br>
            --%>
            <p>
                Подрядная организация :
                <input type="text" name="PODRADCHIK" value="ООО Дэк Строй" size="20" />
                Объект строительства(ж/д) :
                <input type="text" name="OBJECTSTR" value="ж/д" size="5" />
            </p>

            <input type="submit" value="Генерировать ТЗ" name="gen" onclick="resulttz.jsp"/>
        </form>
    </body>
</html>
