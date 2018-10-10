<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="org.itstep.Masters" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>home</title>
    <meta charset="utf-8"/>
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css">
    <script src="/resources/js.js"></script>
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
        <div class="form_div" onclick="openMasters()">
            <p>Сотрудник</p><br>
            <span class="selected_span" id="name_master"></span>
        </div>
        <div class="form_div" onclick="openServices()">
            <p>Сотрудник</p><br>
            <span class="selected_span" id="name_service"></span>
        </div>
        <br><br>
        <span class="confirm_record"><p>ОФОРМИТЬ ВИЗИТ</p></span>
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

    <div id="all_service">
        <c:if test="${service != null}" var="isServicePresent">
            <%--@elvariable id="master" type="java.util.List"--%>
            <c:forEach items="${service}" var="service" varStatus="status">
                <div class="form_div_masters" onclick="
                        getElementById('mainNav').style.display = 'block';
                        getElementById('all_master').style.display = 'none';
                        getElementById('all_service').style.display = 'none';
                        getElementById('name_service').textContent = '${service.name}';">
                    <p>${service.name}</p><br>

                    <span class="selected_span">${service.price}</span>
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
        <li style="margin-left: 6%"><img src="https://pp.userapi.com/c849528/v849528520/7a1e1/7nXTDF0suIs.jpg" style="max-width: 420px;"></li>
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
        <div class="show_cat">
            <a style="font-size: 3vw" name="about">О НАС</a><!-- ссылка на главный блог -->
        </div>
        <p style="font-size: 2vw"> <span class="colorRed"> Exam </span> — это база в самом сердце города, где можно скрыться в любой удобной для тебя форме. Мужская стрижка, уход за бородой, классическое бритье, и разговор с теми, кому не все равно.
        </p>
        <p class="textCenter" style="font-size: 2vw">
            Ждём тебя, чтобы поделиться этим всем. Нальём джин-тоник с огурцом или 50 рома, посидим и отдохнём. Заглядывай и оставайся надолго.<br><br>
            Мы всегда на расстоянии звонка.<br><br>

            <span class="button" onclick="openNav()">Записаться</span> <!-- кнопка регистрации -->
        </p>
    </div>

    <div class="blank" style="text-align: center"> <!-- все услуги -->
        <div class="show_cat">
            <a style="font-size: 3vw" name="services">УСЛУГИ</a> <!-- ссылка на услуги -->
        </div>
        <img style="width: 100%" src="https://pp.userapi.com/c844417/v844417066/fec80/htjqcDHw9BQ.jpg">
    </div>

    <div class="blank"> <!-- все мастера -->
        <div class="show_cat">
            <a style="font-size: 3vw" name="masters">МАСТЕРА</a> <!-- ссылка на мастеров -->
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
        </div>
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
        </div>
    </div> <!-- end все мастера -->


    <div class="blank">
        <div class="show_cat">
            <a style="font-size: 3vw" name="contacts">КОНТАКТЫ</a> <!-- ссылка на мастеров -->
        </div>

        <div class="show_main">
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
        </div>

        <div class="show_mini">
            <p style="font-size: 3vw; margin-bottom: 2%;margin-top: 2%;">Время работы:</p>
            <p style="font-size: 2vw">с 10:00 до 22:00<br>Без выходных</p>
            <p style="font-size: 3vw; margin-bottom: 2%;margin-top: 2%">Адрес: г. Днепропетровск</p>
            <p style="font-size: 2vw">Email: hfp4e@vmani.coms<br>Телефон: (180)212-03-66</p>
        </div>
    </div>
</div>
</body>
</html>