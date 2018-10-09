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
    <a href="#">About</a>
    <a href="#">Services</a>
    <a href="#">Clients</a>
    <a href="#">Contact</a>
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
    <!-- Simulate a smartphone / tablet -->
    <div class="mobile-container">
        <div class="topnav">
            <a href="#home" class="active"><br></a>
            <div id="myLinks">
                <a href="#blank1">О нас</a>
                <a href="#blank2">Услуги</a>
                <a href="#blank3">Мастера</a>
            </div>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>
    </div>
</div>


<div id="body">
    <div class="blank">
        <div class="show_cat">
            <a class="blank_info" name="about">О НАС</a><!-- ссылка на главный блог -->
        </div>
        <p>  <!-- вся информация -->
            <span class="colorRed"> Exam </span>— это база в самом сердце города, где можно скрыться в любой удобной для тебя форме. Мужская стрижка, уход за бородой, классическое бритье, и разговор с теми, кому не все равно.
        </p>
        <p class="textCenter">
            Ждём тебя, чтобы поделиться этим всем. Нальём джин-тоник с огурцом или 50 рома, посидим и отдохнём. Заглядывай и оставайся надолго.<br><br>
            Мы всегда на расстоянии звонка.<br><br>

            <span class="button" onclick="openNav()">Записаться</span> <!-- кнопка регистрации -->
        </p>
    </div>

    <div class="blank" style="text-align: center"> <!-- все услуги -->
        <div class="show_cat">
            <a class="blank_info" name="services">УСЛУГИ</a> <!-- ссылка на услуги -->
        </div>
        <img style="width: 100%" src="https://pp.userapi.com/c844417/v844417066/fec80/htjqcDHw9BQ.jpg">
    </div>

    <div class="blank"> <!-- все мастера -->
        <div class="show_cat">
            <a class="blank_info" name="masters">МАСТЕРА</a> <!-- ссылка на мастеров -->
        </div><br>

        <div class="center">
            <c:if test="${master != null}" var="isMasterPresent">
                <table>
                    <tr>
                            <%--@elvariable id="master" type="java.util.List"--%>
                        <c:forEach items="${master}" var="master" varStatus="status">
                            <th>
                                <p class="inactive_employee_withdrawal" style="font-size: 2vmax;">
                                    <img src="${master.img}"><br><br>
                                    ${master.name}
                                </p>
                            </th>
                        </c:forEach>
                    </tr>
                </table>
            </c:if>
        </div>
    </div> <!-- end все мастера -->


    <div class="blank">
        <div class="show_cat">
            <a class="blank_info" name="contacts">КОНТАКТЫ</a> <!-- ссылка на мастеров -->
        </div>

        <div style="width: 100%;">
            <div style="width: 45%;display:inline-block;">
                <p style="font-size: 2vmax; margin-bottom: 2%;margin-top: 2%;">Время работы:</p>
                <p style="font-size: 1vmax">с 10:00 до 22:00<br>Без выходных</p>
            </div>
            <div style="width: 45%;display:inline-block; float: right">
                <p style="font-size: 2vmax; margin-bottom: 2%;margin-top: 2%">Адрес: г. Днепропетровск</p>
                <p style="font-size: 1vmax">Email: hfp4e@vmani.coms<br>Телефон: (180)212-03-66</p>
            </div>
        </div>
        <div style="width: 100%; background-color: #111111; height: 10px">

        </div>
        <p style="font-size: 2vmax; margin-bottom: 2%;margin-top: 2%;">Время работы:</p>
        <p style="font-size: 1vmax">с 10:00 до 22:00<br>Без выходных</p>
        <p style="font-size: 2vmax; margin-bottom: 2%;margin-top: 2%">Адрес: г. Днепропетровск</p>
        <p style="font-size: 1vmax">Email: hfp4e@vmani.coms<br>Телефон: (180)212-03-66</p>
    </div>
</div>
</body>
</html>