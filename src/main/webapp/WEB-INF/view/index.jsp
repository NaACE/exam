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

<div id="header"> <!-- ERROR (при изменении размера телефон и почта залезают на логотип) -->
    <ul id="menu">
        <li><a href="#blank1">О нас</a></li>
        <li><a href="#blank2">Услуги</a></li>
        <li><a href="#blank3">Мастера</a></li>
        <!-- style="display: inline-block;width: 50%;max-width: 480px; margin-left: 15%" -->
        <li><img src="https://pp.userapi.com/c849528/v849528520/7a1e1/7nXTDF0suIs.jpg" style="max-width: 420px;"></li>
        <!-- tyle="position: center; float: right; margin-right: 4%; vertical-align:middle; display: inline-block;" -->
        <li><a style="background-color: #9a1b20;">(180)212-03-66</a></li>
        <li><a style="background-color: #9a1b20;">hfp4e@vmani.coms</a></li>
    </ul>
</div>


<div id="body">
    <a name="blank1"></a> <!-- ссылка на главный блог -->
    <div class="blank">
        <p>  <!-- вся информация -->
            <span class="colorRed"> Exam </span>— это база в самом сердце города, где можно скрыться в любой удобной для тебя форме. Мужская стрижка, уход за бородой, классическое бритье, и разговор с теми, кому не все равно.
        </p>
        <p class="textCenter">
            Ждём тебя, чтобы поделиться этим всем. Нальём джин-тоник с огурцом или 50 рома, посидим и отдохнём. Заглядывай и оставайся надолго.<br><br>
            Мы всегда на расстоянии звонка.<br><br>

            <span class="button" onclick="openNav()">Записаться</span> <!-- кнопка регистрации -->
        </p>
    </div>

    <a name="blank2"></a> <!-- ссылка на услуги -->
    <div class="blank" style="text-align: center"> <!-- все услуги -->
        <p style="color: blue;font-size: 6vmin;">Что Exam может сделать?</p>
        <img style="width: 100%" src="https://pp.userapi.com/c844417/v844417066/fec80/htjqcDHw9BQ.jpg">
    </div>

    <a name="blank3"></a> <!-- ссылка на мастеров -->
    <div class="blank"> <!-- все мастера -->
        <c:if test="${master != null}" var="isMasterPresent">
            <table>
                <tr>
                    <%--@elvariable id="master" type="java.util.List"--%>
                    <c:forEach items="${master}" var="master" varStatus="status">
                        <th>
                            <p class="inactive_employee_withdrawal">
                                <img src="${master.img}"><br>
                                <span>${master.name}</span>
                            </p>
                        </th>
                    </c:forEach>
                </tr>
            </table>
        </c:if>
    </div> <!-- end все мастера -->
</div>
</body>
</html>