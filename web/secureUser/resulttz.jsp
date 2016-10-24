<%-- 
    Document   : resulttz
    Created on : 22.10.2016, 21:07:59
    Author     : kapitanssb
--%>

<%@page import="javax.xml.ws.Response"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
        <title>JSP Page</title>

        <style>
            table { 
                width: 800; /* Ширина таблицы */
                border: 0px double black; /* Рамка вокруг таблицы */
                border-collapse: collapse; /* Отображать только одинарные линии */
                foht-family: "Times New Roman"  serif;
                font-size: 20px;
            }

            
            
        </style>
    </head>
    <body>
        <table border="0" cellpadding="10" width="800" cellspacing="0">
            <tr><td align="right"> <strong>УТВЕРЖДАЮ</strong><br>
                    Начальник Серпуховского РЭС<br><br>
                    __________________В.А.Пияковский<br>
                    "___" ____________________
                    <% out.print(request.getParameter("YEAR"));%> г.</td></tr>
            <tr><td align="center"><strong>ТЕХНИЧЕСКОЕ ЗАДАНИЕ</strong><br>
                    на разработку проекта по титулу:<br><br>
                    <strong>"<% out.print(request.getParameter("TITUL"));%>"</strong><br>
                    по адресу: МО,Серпуховский р-н, 
                    <% out.print(request.getParameter("PUNKT"));%><br></td></tr>
        </table>


        <table border="1" cellpadding="10" width="800" cellspacing="0">
            <tr>
                <td colspan="2" align="center" ><strong>1. ОБЩИЕ ДАННЫЕ</strong></td>
            </tr>
            <tr>
                <td align="left"><strong>1.1 Основание для проектирования.</strong></td>
                <td align="left">Инвестиционная программа Южных электрических сетей,
                    ТУ <% out.print(request.getParameter("TUNOMER"));%> от
                    <% out.print(request.getParameter("TUDATA"));%> г.</td>
            </tr>
            <tr>
                <td align="left"><strong>1.2 Заказчик</strong></td>
                <td align="left">ЮЭС - филиал ПАО "МОЭСК"</td>    
            </tr>
            <tr>
                <td align="left"><strong>1.3 Проектная организация - генеральный проектировщик</strong></td>
                <td align="left"><% out.print(request.getParameter("PODRADCHIK"));%></td>    
            </tr>
            <tr>
                <td align="left"><strong>1.4 Вид строительства</strong></td>
                <td align="left">Новое строительство</td>
            </tr>
            <tr>
                <td align="left"><strong>1.5 Стадийность проектирования</strong></td>
                <td align="left">Одностадийное. Рабочий проект</td>
            </tr>
            <tr>
                <td align="left"><strong>1.6 Назначение проектируемого объекта</strong></td>
                <td align="left">Электроснабжение <% out.print(request.getParameter("OBJECTSTR"));%>
                    <% out.print(request.getParameter("ZAKAZCHIK"));%><br>
                    по адресу: МО, Серпуховский р-н, <% out.print(request.getParameter("PUNKT"));%></td>
            </tr>
            <tr>
                <td align="left"><strong>1.7 Особые условия строительства</strong></td>
                <td align="left">Работы в действующих электроустановках</td>
            </tr>
            <tr>
                <td align="left"><strong>1.8 Основные технико-экономические показатели</strong></td>
                <td align="left">Заявленная мощность - <% out.print(request.getParameter("MOSH"));%> кВт<br>
                    Номинальное напряжение - <% out.print(request.getParameter("NAPR"));%> В<br>
                    Категория надежности - <% out.print(request.getParameter("KAT"));%><br>
                    <%--Далее определяем объем строительства--%>
                    <%
                        //Java script форимирования объема строительства ЛОГИКА НЕ ДОПИЛЕНА!!!!НЕТ ПРОВЕРОК!!!!
                        String objem = "";
                        String tempvar = "";
                        //Что строим? Либо ВЛИ-0,4 кВ, либо КЛ-0,4 кВ
                        String w_project = request.getParameter("WHATPROJECT");
                        //К чему присоединяемся? К ВЛИ/КЛ
                        String w_connect = request.getParameter("WHATCONNECT");
                        // ВЛТ или КЛ существует? Либо существующая, либо проектируемая
                        String absent = request.getParameter("ABSENT");
                        //Тип КТП
                        String tptype = request.getParameter("TPTYPE");
                        //Номер ТП, может отсутствовать
                        String tpnumber = request.getParameter("TPNUMBER");
                        //Инвентарный номер, может отсутствовать
                        String inventar = request.getParameter("INVENTAR");
                        //Дистанция строительства
                        String distance = request.getParameter("DISTANCE");
                        //Все величины оапределены, начинаем формирование объема....
                        if (w_project.equals("ВЛИ")) {
                            //Строим ВЛИ
                            objem = "Выполнить строительство отпайки ВЛИ-0,4 кВ от ";
                            //tempvar = "ВЛИ-0,4 кВ ";
                        } else {
                            //Строим КЛ
                            objem = "Выполнить строительство КЛ-0,4 кВ от ";
                            //tempvar = "КЛ-0,4 кВ ";
                        }
                        if(w_connect.equals("ВЛИ")){
                            //К ВЛИ
                            tempvar = "ВЛ-0,4 кВ";
                        }else{
                            //К КЛ или РУ
                            if(w_connect.equals("РУ")){
                                tempvar = " РУ-0,4 кВ ";
                            }else{
                                tempvar = "КЛ-0,4 кВ";
                            }
                        }
                        if (absent.equals("СУЩ")) {
                            //от существующей
                            objem = objem + "существующей " + tempvar;
                        } else {
                            //от проектируемой
                            if (absent.equals("ПРОЕКТ")){
                                objem = objem + "проектируемой " + tempvar;
                            } else{
                                objem = objem + tempvar;
                            }
                        }
                        if (inventar.isEmpty()) {
                            //Инвентарный номер не набран, значит его нет
                        } else {
                            //Добавляем инвентарный номер
                            objem = objem + "(инв. №" + inventar + ")";
                        }
                        if (!tptype.isEmpty() && !tpnumber.isEmpty()) {
                            //Если введен номер ТП и ее тип
                            objem = objem + ", " + tptype + "-" + tpnumber
                                    + " до участка заявителя " + distance + " км";
                        } else {
                            objem = objem + " до участка заявителя - " + distance + " км";
                        }
                        //Выводим объем в таблицу
                        out.print(objem);
                    %></td>
            </tr>
            <tr>
                <td align="left"><strong>1.9 Сроки начала и окончания строительства</strong></td>
                <td align="left">В соответствии с договором подряда.</td>
            </tr>
            <tr>
                <td align="left"><strong>1.10 Сроки проектирования</strong></td>
                <td align="left">В соответствии с договором подряда.</td>
            </tr>
            <tr>
                <td align="left"><strong>1.11 Источник финансирования</strong></td>
                <td align="left">Технологические присоединения.</td>
            </tr>
            <tr>
                <td colspan="2" align="center" ><strong>2. ОСНОВНЫЕ ТРЕБОВАНИЯ К ПРОЕКТНЫМ РЕШЕНИЯМ</strong></td>
            </tr>
            <tr>
                <td align="left"><strong>2.1 Архитектурно-планировочные регения</strong></td>
                <td align="left">Не требуется.</td>
            </tr>
            <tr>
                <td align="left"><strong>2.2 Технологические решения и выбор оборудования</strong></td>
                <td align="left"><strong>ВЛИ-0,4 кВ</strong><br>
                    1.1 Применяемый провод <% out.print(request.getParameter("SIP"));%> мм2<br>
                    1.2 Линейная арматура тип - "Нилед"<br>
                    1.3 Количество анкерных и промежуточных опор определить проектом.<br>
                    1.4 В проекте предусмотреть подвеску дополнительного провода для уличного освещения. 
                    Объем работ по уличному освещению в сметы не включать.<br>
                    Стойки СВ 95-3
                </td>
            </tr>
            <tr>
                <td align="left"><strong>2.3 Выделение пусковых комплексов.</strong></td>
                <td align="left">Технологические присоединения.</td>
            </tr>
            <tr>
                <td colspan="2" align="center" ><strong>3. В СОСТАВЕ ПРОЕКТА ВЫПОЛНИТЬ</strong></td>
            </tr>
            <tr>
                <td align="left"><strong>3.1. Раздел «Охрана окружающей среды»</strong></td>
                <td align="left">Выполнить раздел в соответствии с действующими нормативными документами.</td>
            </tr>
            <tr>
                <td align="left"><strong>3.2. Раздел «Противопожарные мероприятия»</strong></td>
                <td align="left">Проект разработать с учетом требований противопожарной безопасности, согласно ТУПУ УГПС МЧС России</td>
            </tr>
            <tr>
                <td align="left"><strong>3.3. Раздел «Энергосберегающие мероприятия»</strong></td>
                <td align="left">Не требуется. </td>
            </tr>
            <tr>
                <td align="left"><strong>3.4. Инженерно-технические мероприятия гражданской обороны и предупреждение чрезвычайных ситуаций.</strong></td>
                <td align="left">Не требуется.</td>
            </tr>

            <tr>
                <td rowspan="8" align="left" valign="top"><strong>3.5 Оформление земельно-правовых отношений.</strong></td>
                <td>3.5.1. Обосновать размеры земельных участков для размещения 
                    объектов капитального строительства (реконструкции).</td>
            </tr>
            <tr>
                <td>3.5.2. Предоставить сведенья о собственниках и правообладателях 
                    земельных участков под объекты капитального строительства (реконструкции).</td>
            </tr>
            <tr>
                <td>3.5.3. Предоставить сведенья о категории, разрешенном использовании и 
                    градостроительных регламентах в отношении земельных участков под объекты 
                    капитального строительства (реконструкции).</td>
            </tr>
            <tr>
                <td>3.5.4. Получить кадастровые выписки о земельных участках, подлежащих выкупу 
                    или временному занятию объектами капитального строительства (реконструкции).</td>
            </tr>
            <tr>
                <td>3.5.5. Разработать и утвердить в установленном порядке схемы расположения земельных 
                    участков на кадастровых картах или планах соответствующих территорий предназначенных 
                    под капитальное строительство (реконструкции).</td>
            </tr>
            <tr>
                <td>3.5.6. Оформить Схему границ земель или части земельного участка на кадастровом плане 
                    территории с указанием координат характерных точек границ территории (в соответствии 
                    с требованиями Постановления Правительства МО от 08.04.2015 №229/13).</td>
            </tr>
            <tr>
                <td>3.5.7. Получить в уполномоченном органе Разрешение на размещение объекта строительства 
                    на землях или части земельного участка.</td>
            </tr>
            <tr>
                <td>3.5.8. Подготовить расчет затрат собственников земельных участков, землепользователей, 
                    землевладельцев, арендаторов земельных участков связанных с изъятием, выкупом, временным 
                    занятием, согласно представленных заказчиком методик расчета.</td>
            </tr>
            <tr>
                <td align="left"><strong>3.6. Разработка вариантов</strong></td>
                <td align="left">Не требуется.</td>
            </tr>
            <tr>
                <td align="left"><strong>3.7. Бизнес-план</strong></td>
                <td align="left">Не требуется.</td>
            </tr>
            <tr>
                <td align="left"><strong>3.8. Тендерная документация</strong></td>
                <td align="left">Не требуется.</td>
            </tr>
            <tr>
                <td colspan="2" align="center" ><strong>4. ПРОЧИЕ СВЕДЕНИЯ</strong></td>
            </tr>
            <tr>
                <td align="left"><strong>4.1. Исходные данные, передаваемые заказчиком проектной организации</strong></td>
                <td align="left">Исходных данные регламентируются с учетом рекомендаций СНиП 11-01-95, сроки подготовки 
                    и передачи их заказчиком определяются договором и календарным планом разработки проекта.</td>
            </tr>
            <tr>
                <td align="left"><strong>4.2. Согласование проекта</strong></td>
                <td align="left">Проектировщик согласовывает и защищает проект во всех заинтересованных организациях, 
                    в т.ч. в Управлении по технологическому и экологическому надзору Ростехнадзора по Московской области, 
                    в Мособлгосэкспертизе на инженерные изыскания и проектную документацию, в случае необходимости</td>
            </tr>

        </table>

        <br>
        <br>
        <table border="0" cellpadding="10" width="800" cellspacing="0">
            <tr>
                <td align="left"><strong>Заместитель начальника СРЭС :</strong></td>
                <td align="right">_____________________А.И.Сучков</td>
            </tr>
        </table>
        <br>
        <br>
        <br>
        <table border="0" cellpadding="10" width="800" cellspacing="0">
            <tr>
                <td align="left" ><strong>Принято к исполнению</strong></td>
            </tr>
        </table>
        <br>
        <table border="0" cellpadding="10" width="800" cellspacing="0">
            <tr>
                <td align="left"><strong>Руководитель подрядной организации:</strong></td>
                <td align="right">____________________/_________/</td>
            </tr>  
        </table>
        <br>
        <table border="0" cellpadding="10" width="800" cellspacing="0">
            <tr>
                <td align="left"><strong>Главный инженер проекта:</strong></td>
                <td align="right">____________________/_________/</td>
            </tr>  
        </table>
        
        

    <button onclick="window.print();">Печать</button>
               

    </body>
</html>
