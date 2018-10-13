<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="org.itstep.Masters" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>home</title>
    <meta charset="utf-8"/>
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css">
    <script src="/resources/javascript.js"></script>
</head>
<body>

<div id="mySidenav" class="sidenav">
    <div id="online_info">
        <div class="form_div" style="background-color: #808080;height: 94px;">
            <p style="margin: 40px 0 0;">
                <strong style="color: #fff; font-size: 21px; margin: 0">ОНЛАЙН-ЗАПИСЬ</strong>
            </p><br>
            <p style="margin: 0">
                <strong style="color: #fff; font-size: 21px; margin: 0">Barbershop</strong>
            </p>
        </div>
    </div>

    <div id="mainNav">
        <table class="form_table">
            <tr>
                <div class="form_div" onclick="openMasters()">
                    <p>Сотрудник</p><br>
                    <span class="selected_span" id="name_master"></span>
                </div>
            </tr>
            <tr>
                <div class="form_div" onclick="openServices()">
                    <p>Услуга</p><br>
                    <span class="selected_span" id="name_services"></span>
                </div>
            </tr>
            <tr>
                <form method="post">
                    <input type="submit" class="button_nav"><p>ОФОРМИТЬ ВИЗИТ</p></input>
                </form>
            </tr>
        </table>
    </div>

    <div id="all_master">
        <c:if test="${master != null}" var="isMasterPresent">
            <%--@elvariable id="master" type="java.util.List"--%>
            <c:forEach items="${master}" var="master" varStatus="status">
                <div class="form_div_masters" onclick="
                        getElementById('mainNav').style.display = 'block';
                        getElementById('all_master').style.display = 'none';
                        getElementById('all_service').style.display = 'none';
                        getElementById('name_master').textContent = '${master.name}';">
                    <ul class="hr">
                        <img src="${master.img}">
                        <p>${master.name}</p>
                    </ul>
                </div>
            </c:forEach>
        </c:if>
    </div>
    <div id="all_service" style="margin-bottom: 75px;">
        <c:if test="${service != null}" var="isServicePresent">
            <%--@elvariable id="master" type="java.util.List"--%>
            <c:forEach items="${service}" var="service" varStatus="status">
                <div class="form_div_masters" onclick="
                        getElementById('mainNav').style.display = 'block';
                        getElementById('all_master').style.display = 'none';
                        getElementById('all_service').style.display = 'none';
                        getElementById('name_service').textContent = '${service.name}';">
                    <p>${service.name}</p>
                    <p style="display: inline-block">
                        <span class="selected_span">${service.price} ₴ | </span>
                        <span class="selected_span">${service.times} час</span>
                    </p>
                </div>
            </c:forEach>
        </c:if>
    </div>
</div>

<div id="header">
    <ul id="menu"> <!-- main menu -->
        <li><a href="#about">О нас</a></li>
        <li><a href="#services">Услуги</a></li>
        <li><a href="#masters">Мастера</a></li>
        <li><a href="#contacts">Контакты</a></li>
        <li style="margin-left: 6%"><img src="http://www.mediafire.com/convkey/bcd2/3u35230l5e0y3vyzg.jpg" style="max-width: 420px;"></li>
    </ul>

    <!-- mini manu -->
    <div class="mobile-container">
        <div class="topnav">
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
            <a href="#home" class="active"><br></a>
            <div id="myLinks">
                <a href="#about">О нас</a>
                <a href="#services">Услуги</a>
                <a href="#masters">Мастера</a>
                <a href="#contacts">Контакты</a>
            </div>
        </div>
    </div>
</div>
<div id="body">
    <div class="blank">
        <div class="show_main">
            <div class="show_cat">
                <a name="about">О НАС</a><!-- ссылка на главный блог -->
            </div>

            <p> <span class="colorRed"> Exam </span> — это база в самом сердце города, где можно скрыться в любой удобной для тебя форме. Мужская стрижка, уход за бородой, классическое бритье, и разговор с теми, кому не все равно.</p>
            <p class="textCenter">Ждём тебя, чтобы поделиться этим всем. Нальём джин-тоник с огурцом или 50 рома, посидим и отдохнём. Заглядывай и оставайся надолго.<br><br>Мы всегда на расстоянии звонка.<br><br>
                <span class="button" onclick="openNav()">Записаться</span> <!-- кнопка регистрации -->
            </p>
        </div>
        <div class="show_mini">
            <div class="show_cat">
                <a style="font-size: 3vmax" name="about">О НАС</a><!-- ссылка на главный блог -->
            </div>
            <p style="font-size: 2vmax;"> <span class="colorRed"> Exam </span> — это база в самом сердце города, где можно скрыться в любой удобной для тебя форме. Мужская стрижка, уход за бородой, классическое бритье, и разговор с теми, кому не все равно.</p>
            <p style="font-size: 2vmax;margin-bottom: 0" class="textCenter">Ждём тебя, чтобы поделиться этим всем. Нальём джин-тоник с огурцом или 50 рома, посидим и отдохнём. Заглядывай и оставайся надолго.<br><br>Мы всегда на расстоянии звонка.<br>
                <span style="width: 50vw" class="button" onclick="openNav()">Записаться</span> <!-- кнопка регистрации -->
            </p>
        </div>
    </div>

    <div class="blank" style="text-align: center"> <!-- все услуги -->
        <div class="show_main">
            <div class="show_cat">
                <a name="services">УСЛУГИ</a> <!-- ссылка на услуги -->
            </div>
            <img style="display: inline-block; width: 55vw" src="http://www.mediafire.com/convkey/fbed/1c21ixqgbbfj3b6zg.jpg">
        </div>

        <div class="show_mini">
            <div class="show_cat">
                <a style="font-size: 3vmax;" name="services">УСЛУГИ</a> <!-- ссылка на услуги -->
            </div>
            <br>
            <table class="table_mini_service">
                <tr>
                    <td style="font-size: 2vmax;float: left;">СТРИЖКА</td>
                    <td style="font-size: 2vmax;float: right;">300 грн.</td>
                </tr>
                <tr>
                    <td style="font-size: 2vmax;float: left;">СТРИЖКА МАШИНКОЙ</td>
                    <td style="font-size: 2vmax;float: right;">200 грн.</td>
                </tr>
                <tr>
                    <td style="font-size: 2vmax;float: left;">СТРИЖКА БОРОДЫ</td>
                    <td style="font-size: 2vmax;float: right;">150 грн.</td>
                </tr>
                <tr>
                    <td style="font-size: 2vmax;float: left;">БРИТЬЕ</td>
                    <td style="font-size: 2vmax;float: right;">250 грн.</td>
                </tr>
                <tr>
                    <td style="font-size: 2vmax;float: left;">ДЕТСКАЯ</td>
                    <td style="font-size: 2vmax;float: right;">250 грн.</td>
                </tr>
                <tr>
                    <td style="font-size: 2vmax;float: left;">ОТЕЦ И СЫН</td>
                    <td style="font-size: 2vmax;float: right;">500 грн.</td>
                </tr>
                <tr>
                    <td style="font-size: 2vmax;float: left;">СТРИЖКА И СТРИЖКА БОРОДЫ</td>
                    <td style="font-size: 2vmax;float: right;">400 грн.</td>
                </tr>
            </table>
        </div>

    </div>

    <div class="blank"> <!-- все мастера -->
        <div class="show_cat">
            <a name="masters">МАСТЕРА</a> <!-- ссылка на мастеров -->
        </div><br>

        <div class="show_main">
            <div class="center">
                <c:if test="${master != null}" var="isMasterPresent">
                    <table>
                        <tr>
                                <%--@elvariable id="master" type="java.util.List"--%>
                            <c:forEach items="${master}" var="master" varStatus="status">
                                <th>
                                    <p class="inactive_employee_withdrawal" style="font-size: 2vw;">
                                        <img src="${master.img}"><br><br>
                                            ${master.name}
                                    </p>
                                </th>
                            </c:forEach>
                        </tr>
                    </table>
                </c:if>
            </div>
        </div> <!-- вывод всех мастеров, если размер экрана < 760px -->
        <div class="show_mini">
            <div class="center">
                <c:if test="${master != null}" var="isMasterPresent">
                    <table>
                                <%--@elvariable id="master" type="java.util.List"--%>
                            <c:forEach items="${master}" var="master" varStatus="status">
                                <tr>
                                    <p class="inactive_employee_withdrawal" style="font-size: 3vw;">
                                        <img style="width: 50vw; max-width: 250px" src="${master.img}"><br><br>
                                            ${master.name}
                                    </p>
                                </tr>
                            </c:forEach>
                    </table>
                </c:if>
            </div>
        </div> <!-- вывод всех мастеров, если размер экрана > 760px -->
    </div> <!-- end все мастера -->


    <div class="blank">
        <div class="show_main">
            <div class="show_cat">
                <a name="contacts">КОНТАКТЫ</a> <!-- ссылка на мастеров -->
            </div><br>
            <div style="width: 100%;">
                <div style="width: 45%;display:inline-block;">
                    <p style="font-size: 2vw; margin-bottom: 2%;margin-top: 2%;">Время работы:</p>
                    <p style="font-size: 1vw">с 10:00 до 22:00<br>Без выходных</p>
                </div>
                <div style="width: 45%;display:inline-block; float: right">
                    <p style="font-size: 2vw; margin-bottom: 2%;margin-top: 2%">Адрес: г. Днепропетровск</p>
                    <p style="font-size: 1vw">Email: hfp4e@vmani.coms<br>Телефон: (180)212-03-66</p>
                </div>
            </div>
        </div> <!-- информация о нас, если размер экрана < 760px -->
        <div class="show_mini" style="text-align: center">
            <div class="show_cat">
                <a style="font-size: 3vmax; margin-bottom: 6px" name="contacts">КОНТАКТЫ</a> <!-- ссылка на мастеров -->
            </div>

            <p style="font-size: 3vmax; margin-bottom: 2%;margin-top: 2%;">Время работы:</p>
            <p style="font-size: 2vmax; margin: 0;">с 10:00 до 22:00<br>Без выходных</p>
            <p style="font-size: 3vmax; margin-bottom: 2%;margin-top: 2%">Адрес: г. Днепропетровск</p>
            <p style="font-size: 2vmax; margin: 0;">Email: hfp4e@vmani.coms<br>Телефон: (180)212-03-66</p>
        </div> <!-- информация о нас, если размер экрана > 760px -->
    </div>
</div>
</body>
</html>